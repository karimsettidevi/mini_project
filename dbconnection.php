<?php
$servername="localhost";
$username="root";
$password="";
$conn=mysqli_connect($servername,$username,$password);
if(!$conn){
	die("connection failed:".mysqli_connect_error());
}
//echo "connected successfully";
mysqli_select_db($conn,"mini_project");
?>