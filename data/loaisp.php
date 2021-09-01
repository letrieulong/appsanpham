<?php 

$conn = mysqli_connect("localhost", "root", "", "sanpham");

$sql = "SELECT * FROM loaisanpham";

$result = mysqli_query($conn, $sql);

$mang = array();
while ($rows = mysqli_fetch_assoc($result)) {
	array_push($mang, $rows);
}

mysqli_close($conn);
echo json_encode($mang);


?>