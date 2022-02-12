<?php
session_start();
$servername="localhost";
error_reporting(0);
$username="root";
$password="";
$conn=mysqli_connect($servername,$username,$password);
mysqli_select_db($conn,"example");
$adminname = $_POST['adminname1'];
$password = $_POST['password'];
$sql="select * from admin where adminname1='$adminname' AND password='$password'";
$result=mysqli_query($conn,$sql) or die("something went wrong".$conn->error);
$num=mysqli_num_rows($result);

if($num>0){
	echo ("<script LANGUAGE='JavaScript'>
		    window.alert('you have entered correct credentials');
			window.location.href='login.html';
			</script>");
}
else{
		
	echo("<script LANGUAGE='JavaScript'>
		 window.alert('you have entered incorrect credentials');
		 window.location.href='admin.html';
		 </script>");
	}
?>