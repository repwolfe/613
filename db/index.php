<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../vendor/autoload.php';

$config['displayErrorDetails'] = true;
/*$config['db']['host']   = "localhost";
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
	return $query;
};

function inThisNotThat($a, $b) {
	return "SELECT mitzvahNumber, asehOrLoSaseh, mitzvahNameEn
			FROM mitzvos, (
		 		SELECT " . $a . ".mitzvahId, " . $a . ".mitzvahNumber
		 	 	FROM " . $a . "
		 		LEFT JOIN " . $b . " ON " . $a . ".mitzvahId = " .$b . ".mitzvahId
		 		WHERE " . $b . ".mitzvahId IS NULL
		 	)
		 	WHERE mitzvos._id = mitzvahId;";
}

$app->get("/verses", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["verses"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/verses/{id}", function(Request $request, Response $response, $args) {
	$res = $this->db->prepare($this->queries["verses"] . " and verses._id = ?;");
	$res->execute([$args["id"]]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/mitzvos", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["mitzvos"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/mitzvos/{id}", function(Request $request, Response $response, $args) {
	$res = $this->db->prepare($this->queries["mitzvos"] . " and mitzvos._id = ?;");
	$res->execute([$args["id"]]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/rambam/ramban", function(Request $request, Response $response) {
	$res = $this->db->query(inThisNotThat("rambam", "ramban"));
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/ramban/rambam", function(Request $request, Response $response) {
	$res = $this->db->query(inThisNotThat("ramban", "rambam"));
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/rambam", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["rambam"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/rambam/{id}", function(Request $request, Response $response, $args) {
	$id = $request->getAttribute("id");
	$res = $this->db->prepare($this->queries["rambam"] . " and rambam._id = ?;");
	$res->execute([$args["id"]]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/ramban", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["ramban"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/ramban/{id}", function(Request $request, Response $response, $args) {
	$res = $this->db->prepare($this->queries["ramban"] . " and mitzvahNumber = ?;");
	$res->execute([$args["id"]]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});



$app->run();

?>