<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../vendor/autoload.php';

$config['displayErrorDetails'] = true;
/*$config['db']['host']   = "localhost"
$config['db']['user']   = "user";
$config['db']['pass']   = "password";
$config['db']['dbname'] = "exampleapp";
*/

$app = new \Slim\App(["settings" => $config]);
$container = $app->getContainer();

$container["db"] = function($c) {
	//$db = $c["settings"]["db"];

	$pdo = new PDO("sqlite:db.db");
	return $pdo;
};

$container["queries"] = function($c) {
	$query["verses"] =
		"SELECT * from books, verses
		 WHERE books._id = verses.bookId";

	$query["mitzvos"] =
		"SELECT * from mitzvos";

	$query["sharedColumns"] =
		"mitzvahId, mitzvahNumber, mitzvahName, mitzvahNameEn, asehOrLoSaseh, bookName, bookNameEn, chapter, verse";

	$query["rambam"] = 
		"SELECT " . $query["sharedColumns"] . ", type, punishment, whoApplies
		 FROM books, verses, mitzvos, rambam 
		 WHERE mitzvos._id = rambam.mitzvahId and verses._id = rambam.source and books._id = verses.bookId";

	$query["ramban"] =
		"SELECT " . $query["sharedColumns"] . ", shihchaNumber
		 FROM mitzvos, books, verses, (
			-- Combine Ramban's list with the Rambams, retreiving any information that is missing in the Ramban's from the Rambam's
		 	SELECT ramban.mitzvahId, ramban.mitzvahNumber, ramban.shihchaNumber,
			(COALESCE(ramban.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM ramban
			LEFT JOIN rambam on ramban.mitzvahId = rambam.mitzvahId	-- Take everything from ramban and add any equivalent rambam's
		 )
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["chinuch"] =
		"SELECT " . $query["sharedColumns"] . "
		 FROM mitzvos, books, verses, (
			-- Combine Chinuch's list with the Rambams, retreiving any information that is missing in the Chinuch's from the Rambam's
			SELECT cMitzvahId as mitzvahId, cMitzvahNumber as mitzvahNumber,
				(COALESCE(cSource, '') || COALESCE(rambam.source, '')) as mergedSource	-- merge source columns, replacing NULL with ''
			FROM (	-- Combine Chinuch with ChinuchSources
				SELECT mitzvahId as cMitzvahId, newMitzvahNumber as cMitzvahNumber, source as cSource 
				FROM chinuch
				LEFT JOIN chinuchSources on chinuch.mitzvahNumber = chinuchSources.mitzvahNumber
			)
			LEFT JOIN rambam on cMitzvahId = rambam.mitzvahId 	-- Take everything from chinuch and add any equivalent rambam's
			ORDER BY mitzvahNumber
		 )
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["semag"] =
		"SELECT " . $query["sharedColumns"] . "
		 FROM mitzvos, books, verses, (
			-- Combine Semag's list with the Rambams, retreiving any information that is missing in the Semag's from the Rambam's
		 	SELECT semag.mitzvahId, semag.mitzvahNumber,
			(COALESCE(semag.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM semag
			LEFT JOIN rambam on semag.mitzvahId = rambam.mitzvahId	-- Take everything from semag and add any equivalent rambam's
		 )
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	return $query;
};

function inThisNotThat($a, $b) {
	return "SELECT mitzvahNumber, asehOrLoSaseh, mitzvahName, mitzvahNameEn
			FROM mitzvos, (
		 		SELECT " . $a . ".mitzvahId, " . $a . ".mitzvahNumber
		 	 	FROM " . $a . "
		 		LEFT JOIN " . $b . " ON " . $a . ".mitzvahId = " .$b . ".mitzvahId
		 		WHERE " . $b . ".mitzvahId IS NULL
		 	)
		 	WHERE mitzvos._id = mitzvahId;";
}

function inBoth($a, $b) {
	return "SELECT mitzvahNumber, asehOrLoSaseh, mitzvahName, mitzvahNameEn
			FROM mitzvos, (
		 		SELECT " . $a . ".mitzvahId, " . $a . ".mitzvahNumber
		 	 	FROM " . $a . "
		 		INNER JOIN " . $b . " ON " . $a . ".mitzvahId = " .$b . ".mitzvahId
		 	)
		 	WHERE mitzvos._id = mitzvahId;";
}

// All the DB paths, and the column to use when selecting a single entry
$paths = array(
	"verses" 	=> "verses._id",
	"mitzvos" 	=> "mitzvos._id",
	"rambam" 	=> "rambam._id",
	"ramban" 	=> "mitzvahNumber",
	"chinuch"	=> "mitzvahNumber",
	"semag" 	=> "mitzvahNumber"
);

// Initialize every compare path (for example: /rambam/semag)
$path_keys = array_keys($paths);
$start = 2;
for ($i = $start; $i < count($path_keys); ++$i) {
	for ($j = $start; $j < count($path_keys); ++$j) {
		if ($i != $j) {
			$app->get("/" . $path_keys[$i] . "/" . $path_keys[$j], function(Request $request, Response $response) use ($path_keys, $i, $j) {
				if ($request->getQueryParam("both") === "yes") {
					$res = $this->db->query(inBoth($path_keys[$i], $path_keys[$j]));
				}
				else {
					$res = $this->db->query(inThisNotThat($path_keys[$i], $path_keys[$j]));
				}
				$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
				return $response;
			});
		}
	}
}

// Initialize every acceptable path
foreach ($paths as $path => $column) {
	$app->get("/" . $path, function(Request $request, Response $response) use ($path, $column) {
		$res = $this->db->query($this->queries[$path] . ";");
		$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
		return $response;
	});

	$app->get("/" . $path . "/{id}", function(Request $request, Response $response, $args) use ($path, $column) {
		$res = $this->db->prepare($this->queries[$path] . " and ". $column . " = ?;");
		$res->execute([$args["id"]]);
		$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
		return $response;
	});
}

$app->run();

?>