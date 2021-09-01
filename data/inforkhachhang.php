<?php 

$conn = mysqli_connect("localhost", "root", "", "sanpham");

$tenkhachhang = $_POST["tenkhachhang"];
$sodienthoai  = $_POST["sodienthoai"];
$email		  = $_POST["email"];
$address      = $_POST["address"];

	$sql = "INSERT INTO donhang VALUES (null, '$tenkhachhang', '$email', '$sodienthoai', '$address')";
	$result = mysqli_query($conn, $sql);

	if($result){
		$iddonhang = $conn->insert_id;
		// $conn->insert_id; truy xuất tới id của donhang;
		echo $iddonhang;
	}


?>