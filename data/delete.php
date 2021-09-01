<?php 

$conn = mysqli_connect("localhost","root","", "sanpham");

$id = $_POST["ID"];

$sql = "DELETE FROM listsanpham where ID = '$id.'";


if(mysqli_query($conn, $sql)){
	echo '1';
}else{
	echo '0';
}



?>