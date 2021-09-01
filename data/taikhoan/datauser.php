<?php 

$conn = mysqli_connect("localhost", "root", "", "quanlytaikhoan");

$sql = "SELECT * FROM username";

$result = mysqli_query($conn, $sql);

$mang = array();
while ($rows = mysqli_fetch_assoc($result)) {
	array_push($mang, $rows);
}

mysqli_close($conn);
echo json_encode($mang);


?>