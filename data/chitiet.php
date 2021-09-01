<?php 
$conn = mysqli_connect("localhost", "root", "", "sanpham");

$json = $_POST['json'];

$data = json_decode($json, true);

foreach ($data as $value) {

	$madonhang = $value['madonhang'];
	$masanpham = $value['masanpham'];
	$tensanpham = $value['tensanpham'];
	$giasanpham = $value['giasanpham'];
	$soluongsp  = $value['soluongsp'];

	$query = "INSERT INTO chitietdonhang VALUES (null, '$madonhang', '$masanpham', '$tensanpham', '$giasanpham', '$soluongsp')";

	$dta = mysqli_query($conn, $query); 

}if($dta){
	echo "1";
}else {
	echo "0";
}


?>