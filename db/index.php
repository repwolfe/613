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

	$query["rambam"] = 
		"SELECT * FROM books, verses, mitzvos, rambam 
		 WHERE mitzvos._id = rambam.mitzvahId and verses._id = rambam.source and books._id = verses.bookId";
	return $query;
};

$app->get("/verses", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["verses"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/verses/{id}", function(Request $request, Response $response) {
	$res = $this->db->prepare($this->queries["verses"] . " and verses._id = ?;");
	$res->execute([$id]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/rambam", function(Request $request, Response $response) {
	$res = $this->db->query($this->queries["rambam"] . ";");
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->get("/rambam/{id}", function(Request $request, Response $response) {
	$id = $request->getAttribute("id");
	$res = $this->db->prepare($this->queries["rambam"] . " and rambam._id = ?;");
	$res->execute([$id]);
	$response->getBody()->write(json_encode($res->fetchAll(PDO::FETCH_CLASS)));
	return $response;
});

$app->run();

?>