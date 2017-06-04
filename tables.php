<?php
	class MyDB extends SQLite3 {
		function __construct() {
			$this->open("db.db");
		}
		function loadTables() {
			$columns = array("mitzvahNumber as num", "mitzvahName", "name || ':' || chapter || ',' || verse as tanachSource", "type", "whoApplies as who", "originalText");
			$this->makeRow($columns);
			$result = $this->query(
				'SELECT ' . implode(",", $columns) . 
				' from books, verses, mitzvos, rambam ' .
				'where mitzvos._id = rambam.mitzvahId and verses._id = rambam.source and books._id = verses.bookId'
			);
			while($row = $result->fetchArray(SQLITE3_NUM)) {
				$this->makeRow($row);
			};
		}
		function makeRow($row) {
			echo "<tr>";
			$i = 1;
			foreach ($row as $column) {
				$pos = strpos($column, "as ");
				echo "<td align='right'>";
				if ($pos !== false) {
					echo substr($column, $pos + 3);
				}
				else {
					echo $column;
				}
				echo "</td>";
				++$i;
			}
			echo "</tr>";
		}
	}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
</head>
<body style="font-family: 'Tahoma', sans-serif;">
	<table width="100%" border="1">
		<?php
			$db = new MyDB();
			$db->loadTables();	
		?>
	</table>
</body>
</html>