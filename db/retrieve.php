<?php
	if (isset($_GET['table_name'])) {
		include "db_connection.php";
		$table_name = $_GET['table_name'];
		$query = 'SELECT * from ' . $table_name . " LIMIT 5";
		$result = $db->query($query);
		//echo json_encode(var_dump($result));

		$data = array();
		while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
			$data[] = $row;
			//echo json_encode($row);
			//foreach ($row as $column) {
				//echo $column;
			//}
		}
		echo json_encode($data);
	}
?>