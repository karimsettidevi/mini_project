<?php
$name=$_POST['name'];
$id=$_POST['id'];
$branch=$_POST['branch'];
$password=$_POST['password'];
$cpassword=$_POST['confirmpassword'];
$conn=new mysqli('localhost','root','','example');
if(!empty($name)&& !empty($id)&& !empty($branch)&& !empty($password)&& !empty($cpassword) ){
	if($conn->connect_error)
    {
	die('connection failed:'.$conn->connect_error);
    }
    else{
	echo "connected successfully";
	if($password==$cpassword){
			$q="insert into student(name, id, branch, password, confirmpassword) values ('$name','$id', '$branch', '$password', '$cpassword')";
		    $iquery=mysqli_query($conn,$q);
			if($iquery){
				echo("<script LANGUAGE='JavaScript'>
				      window.alert('sucessfully registered');
					  window.location.href='login.html';
					  </script>");
			}
			else{
				echo("<script LANGUAGE='JavaScript'>
				      window.alert('Registration not successful');
					  window.location.href='registration.html';
					  </script>");
			}
		}
	else{
			echo "passwords not matching";
        }
    }
}
else{
		echo "All fields are required";
	}
?>