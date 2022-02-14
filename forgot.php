<?php
session_start();
$servername="localhost";
$username="root";
$password="";
$conn=mysqli_connect($servername,$username,$password);
mysqli_select_db($conn,"example");
$username=$_POST['email'];
$Answer=$_POST['security'];
$sql="select 'email','security' from registration where email='$username' AND security='$Answer' limit 1";
$result=mysqli_query($conn,$sql) or die("something went wrong".$conn->error);
$num=mysqli_num_rows($result);

if($num==1){
	echo "login successful";
	header("location:menu.html");
}
	else{
		
		echo("<script LANGUAGE='JavaScript'>
				      window.alert('you have entered incorrect answer');
					  window.location.href='forget.html';
					  </script>");
	}
?>