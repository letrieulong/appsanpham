  <?php
$conn = mysqli_connect("localhost","root","", "sanpham");

$Name = $_POST["TEN"];
$hinh = $_POST["HINH"];
$Price = $_POST["GIA"];


$path = "image/$Name.png";

$Urlimg = "http://192.168.1.8/sanpham/$path";

$qr = "UPDATE listsanpham SET Name = '$Name',Urlimg = '$Urlimg' ,Price = '$Price'";

if(mysqli_query($conn,$qr)){
  file_put_contents($path,base64_decode($hinh));
  echo '1';
}else{
  echo "Loi";
}

?>