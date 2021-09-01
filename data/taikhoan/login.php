<?php 
$conn = mysqli_connect("localhost", "root", "", "quanlytaikhoan") or die("Kết nối thất bại");

$username = filter_input(INPUT_POST, "usernamer");
$password = filter_input(INPUT_POST, "password");

$sql = "SELECT * FROM username where usernamer = '".$username."' and password = '".$password."'";

$result = mysqli_query($conn, $sql);
	
if($data = mysqli_fetch_array($result)){
	echo '1';
}
?>