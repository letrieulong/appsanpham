<?php 

$conn = mysqli_connect("localhost", "root", "", "sanpham");

$page = $_GET['page'];
$idsp = $_POST['idloaisp'];
$space = 4;
$limit = ($page - 1) * $space;
$mang = array();

$sql = "SELECT * FROM danhsachsp where idloaisp = $idsp"; // LIMIT $limit,$space

$result = mysqli_query($conn, $sql);


while ($rows = mysqli_fetch_assoc($result)) {
	array_push($mang, $rows);
}

mysqli_close($conn);	
echo json_encode($mang);
?>

