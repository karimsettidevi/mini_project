<?php
session_start();
$servername="localhost";
$username="root";
$password="";
$conn=mysqli_connect($servername,$username,$password);
mysqli_select_db($conn,"example");
$uname=$_POST['email'];
$Password=$_POST['password'];
$sql="select 'email','password' from registration where email='$uname' AND password='$Password' limit 1";
$result=mysqli_query($conn,$sql) or die("something went wrong".$conn->error);
$num=mysqli_num_rows($result);
if($num==1){
	echo "login successful";
	header("location:menu.html");
}
else{
		echo("<script LANGUAGE='JavaScript'>
				      window.alert('you have entered incorrect credentials');
					  window.location.href='login.html';
					  </script>");
}
?>
	