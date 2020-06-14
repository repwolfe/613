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

	$query["pageDetails"] =
		"SELECT * from pageDetails
		 WHERE 1 = 1";	// Tautology just so the code from the other tables doesn't break (as they all end with WHERE, and this one doesn't)";

	$query["mitzvosBase"] =
		"FROM mitzvos
		 LEFT JOIN rambam ON mitzvos._id = rambam.mitzvahId
		 LEFT JOIN ramban ON mitzvos._id = ramban.mitzvahId
		 LEFT JOIN semag  ON mitzvos._id = semag.mitzvahId
		 LEFT JOIN bahag  ON mitzvos._id = bahag.mitzvahId
		 WHERE 1 = 1";	// Tautology just so the code from the other tables doesn't break (as they all end with WHERE, and this one doesn't)

	$query["mitzvosColumns"] =
		"mitzvos._id, mitzvahName, mitzvahNameEn, asehOrLoSaseh, rambam._id AS rambamId, ramban._id AS rambanId, semag._id AS semagId, bahag._id AS bahagId";

	$query["mitzvosLess"] =
		"SELECT " . $query["mitzvosColumns"] . " " . $query["mitzvosBase"] . " ORDER BY RANDOM()";

	$query["mitzvosMore"] =
		"SELECT " . $query["mitzvosColumns"] . ", rambam.mitzvahNumber as rambamNumber, ramban.mitzvahNumber as rambanNumber, semag.mitzvahNumber as semagNumber, bahag.mitzvahNumber as bahagNumber " . $query["mitzvosBase"];

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

	$query["chinuchColumns"] = "mitzvahTitle, description, shoresh, dinim, whoWhereWhenApplies";

	$query["chinuchBase"] =
		"FROM mitzvos, books, verses, (
			-- Combine Chinuch's list with the Rambams, retreiving any information that is missing in the Chinuch's from the Rambam's
			SELECT mergedChinuch.oldMitzvahNumber, mergedChinuch.mitzvahNumber, mergedChinuch.mitzvahId, " . $query["chinuchColumns"] . ",
				(COALESCE(mergedChinuch.source, '') || COALESCE(rambam.source, '')) AS mergedSource	-- merge source columns, replacing NULL with ''
			FROM (	-- Combine Chinuch with ChinuchSources
				SELECT mitzvahId, oldMitzvahNumber, chinuch.mitzvahNumber, source, " . $query["chinuchColumns"] . "
				FROM chinuch
				LEFT JOIN chinuchSources ON chinuch.oldMitzvahNumber = chinuchSources.mitzvahNumber
			) AS mergedChinuch
			LEFT JOIN rambam ON mergedChinuch.mitzvahId = rambam.mitzvahId 	-- Take everything from chinuch and add any equivalent rambam's
			ORDER BY mergedChinuch.mitzvahNumber
		 )
		 WHERE mitzvos._id = mitzvahId AND books._id = verses.bookId AND verses._id = mergedSource";

	$query["chinuchLess"] =
		"SELECT " . $query["sharedColumns"] . " " . $query["chinuchBase"];

	$query["chinuchMore"] =
		"SELECT " . $query["sharedColumns"] . ", " . $query["chinuchColumns"] . ", oldMitzvahNumber, verseText, verseTextEn " . $query["chinuchBase"];

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

	$query["bahagBase"] =
		"FROM mitzvos, (
			-- Combine Bahag with the notes
		 	SELECT bahag._id, mitzvahId, mitzvahNumber, mitzvahTitle, categoryNum, COALESCE(enNote, '') as enNote -- replace NULL with ''
			FROM bahag
			LEFT JOIN bahagNotes ON bahag._id = bahagNotes._id
		) as bahag
		 WHERE mitzvos._id = mitzvahId";

	$query["bahagColumns"] =
		"mitzvahId, bahag._id as _id, mitzvahNumber, mitzvahName, mitzvahNameEn, asehOrLoSaseh, mitzvahTitle, categoryNum";

	$query["bahagLess"] =
		"SELECT " . $query["bahagColumns"] . " " . $query["bahagBase"];

	$query["bahagMore"] =
		"SELECT " . $query["bahagColumns"] . ", enNote " . $query["bahagBase"];

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
	"pageDetails",
	"mitzvos",
	"rambam",
	"ramban",
	"chinuch",
	"semag",
	"bahag"
);

// The query to use when collecting all data, retreive less columns
$queriesLess = array(
	"verses",
	"pageDetails",
	"mitzvosLess",
	"rambamLess",
	"rambanLess",
	"chinuchLess",
	"semagLess",
	"bahagLess"
);

// The query to use when collecting a specific entry, retreive all columns
$queriesMore = array(
	array("verses", 		"verses._id"),
	array("pageDetails",	"pageDetails._id"),
	array("mitzvosMore",	"mitzvos._id"),
	array("rambamMore", 	"rambam._id"),
	array("rambanMore", 	"ramban._id"),
	array("chinuchMore",	"mitzvahNumber"),
	array("semagMore", 		"semag._id"),
	array("bahagMore",		"bahag._id")
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