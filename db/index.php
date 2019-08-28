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

	$query["rambamBase"] =
		"FROM books, verses, mitzvos, rambam 
		 WHERE mitzvos._id = rambam.mitzvahId and verses._id = rambam.source and books._id = verses.bookId";

	$query["rambamLess"] =
		"SELECT " . $query["sharedColumns"] . ", rambam._id, type, punishment, whoApplies " . $query["rambamBase"];

	$query["rambamMore"] =
		"SELECT " . $query["sharedColumns"] . ", rambam._id, verseText, verseTextEn, type, punishment, whoApplies, originalText " . $query["rambamBase"];

	$query["rambanBase"] =
		"FROM mitzvos, books, verses, (
			-- Combine Ramban's list with the Rambams, retreiving any information that is missing in the Ramban's from the Rambam's
		 	SELECT ramban._id, ramban.mitzvahId, ramban.mitzvahNumber, ramban.shihchaNumber, ramban.originalText,
			(COALESCE(ramban.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM ramban
			LEFT JOIN rambam ON ramban.mitzvahId = rambam.mitzvahId	-- Take everything from ramban and add any equivalent rambam's
		 ) AS ramban
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["rambanLess"] =
		"SELECT " . $query["sharedColumns"] . ", ramban._id as _id, shihchaNumber " . $query["rambanBase"];

	$query["rambanMore"] =
		"SELECT " . $query["sharedColumns"] . ", ramban._id as _id, verseText, verseTextEn, shihchaNumber, originalText " . $query["rambanBase"];

	$query["chinuchBase"] =
		"FROM mitzvos, books, verses, (
			-- Combine Chinuch's list with the Rambams, retreiving any information that is missing in the Chinuch's from the Rambam's
			SELECT mergedChinuch.mitzvahNumber, mergedChinuch.mitzvahId,
				(COALESCE(mergedChinuch.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM (	-- Combine Chinuch with ChinuchSources
				SELECT mitzvahId, newMitzvahNumber AS mitzvahNumber, source 
				FROM chinuch
				LEFT JOIN chinuchSources ON chinuch.mitzvahNumber = chinuchSources.mitzvahNumber
			) AS mergedChinuch
			LEFT JOIN rambam ON mergedChinuch.mitzvahId = rambam.mitzvahId 	-- Take everything from chinuch and add any equivalent rambam's
			ORDER BY mergedChinuch.mitzvahNumber
		 )
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["chinuchLess"] =
		"SELECT " . $query["sharedColumns"] . " " . $query["chinuchBase"];

	$query["chinuchMore"] =
		"SELECT " . $query["sharedColumns"] . ", verseText, verseTextEn " . $query["chinuchBase"];

	$query["semagBase"] =
		"FROM mitzvos, books, verses, (
			-- Combine Semag's list with the Rambams, retreiving any information that is missing in the Semag's from the Rambam's
		 	SELECT semag._id, semag.mitzvahId, semag.mitzvahNumber,
			(COALESCE(semag.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM semag
			LEFT JOIN rambam ON semag.mitzvahId = rambam.mitzvahId	-- Take everything from semag and add any equivalent rambam's
		 ) as semag
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["semagLess"] =
		"SELECT " . $query["sharedColumns"] . ", semag._id as _id " . $query["semagBase"];

	$query["semagMore"] =
		"SELECT " . $query["sharedColumns"] . ", semag._id as _id, verseText, verseTextEn " . $query["semagBase"];

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
	"verses",
	"mitzvos",
	"rambam",
	"ramban",
	"chinuch",
	"semag"
);

// The query to use when collecting all data, retreive less columns
$queriesLess = array(
	"verses",
	"mitzvos",
	"rambamLess",
	"rambanLess",
	"chinuchLess",
	"semagLess"
);

// The query to use when collecting a specific entry, retreive all columns
$queriesMore = array(
	array("verses", 		"verses._id"),
	array("mitzvos", 		"mitzvos._id"),
	array("rambamMore", 	"rambam._id"),
	array("rambanMore", 	"ramban._id"),
	array("chinuchMore",	"mitzvahNumber"),
	array("semagMore", 		"semag._id")
);

// Initialize every compare path (for example: /rambam/semag)
$start = 2;
for ($i = $start; $i < count($paths); ++$i) {
	for ($j = $start; $j < count($paths); ++$j) {
		if ($i != $j) {
			$app->get("/" . $paths[$i] . "/" . $paths[$j], function(Request $request, Response $response) use ($paths, $i, $j) {
				if ($request->getQueryParam("both") === "yes") {
					$res = $this->db->query(inBoth($paths[$i], $paths[$j]));
				}
				else {
					$res = $this->db->query(inThisNotThat($paths[$i], $paths[$j]));
				}
				$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
				return $response;
			});
		}
	}
}

// Initialize every acceptable path
for ($i = 0; $i < count($paths); ++$i) {
	// Retreiving all entries
	$query = $queriesLess[$i];
	$app->get("/" . $paths[$i], function(Request $request, Response $response) use ($query) {
		$res = $this->db->query($this->queries[$query] . ";");
		$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
		return $response;
	});

	// Retreiving specific entries
	$query = $queriesMore[$i][0];
	$column = $queriesMore[$i][1];
	$app->get("/" . $paths[$i] . "/{id}", function(Request $request, Response $response, $args) use ($query, $column) {
		$res = $this->db->prepare($this->queries[$query] . " and ". $column . " = ?;");
		$res->execute([$args["id"]]);
		$response->getBody()->write(json_encode($res->fetch(PDO::FETCH_ASSOC)));	// Get the one row
		return $response;
	});
}

$app->run();

?>