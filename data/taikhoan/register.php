<?php
$conn = mysqli_connect("localhost", "root", "", "quanlytaikhoan") or die("Kết nối thất bại");

$fullname = $_POST["FULLNAME"];
$username = $_POST["USERNAME"];
$password = $_POST["PASSWORD"];
$nameimg = $_POST["NAMEIMG"];
$hinh = $_POST["HINH"];

$path = "image/$nameimg.png";

$urlimage = "http://192.168.1.8/sanpham/taikhoan/$path";

$qr = "INSERT INTO username VALUES(null,'$fullname', '$username', '$password', '$nameimg', '$urlimage')";

if(mysqli_query($conn,$qr)){
  file_put_contents($path,base64_decode($hinh));
}else{
  echo "Loi";
}

?>
