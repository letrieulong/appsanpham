  
<?php
$conn = mysqli_connect("localhost","root","", "sanpham");

$tenimg = $_POST["TEN"];
$tensp = $_POST["TENSP"];
$hinh = $_POST["HINH"];
$giasp = $_POST["GIA"];
$motasp = $_POST["MOTA"];
$idsp = $_POST["IDSP"];

$path = "image/$tenimg.png";

$Urlimg = "http://192.168.1.8/sanpham/$path";

$qr = "INSERT INTO danhsachsp VALUES(null,'$tensp','$giasp','$motasp','$tenimg','$Urlimg', '$idsp')";

if(mysqli_query($conn,$qr)){
  file_put_contents($path,base64_decode($hinh));
}else{
  echo "Loi";
}

?>