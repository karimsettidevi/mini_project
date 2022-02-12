<?php
$servername="localhost";
$name= $_POST['name'];
$email=$_POST['email'];
$cnumber = $_POST['mobile'];
$event=$_POST['Event_type'];
$city = $_POST['city'];
$date = $_POST['date'];
$address = $_POST['address'];
$time = $_POST['time'];
$service= $_POST['service'];
$chk=implode(",",$service);
if(!empty($name) && !empty($email)&& !empty($cnumber)&& !empty($event)&& !empty($city)&& !empty($date)&& !empty($address) && !empty($time) && !empty($service))
{
	$conn =mysqli_connect('localhost','root','');
	if(!$conn){
		die("Connection Failed : ". $conn->connect_error);
	} 
	mysqli_select_db($conn,"example");
	$emailquery="select * from registration where email='$email'";
	$result=mysqli_query($conn,$emailquery);
    $emailcount=mysqli_num_rows($result);	
	if($emailcount==0){
		echo("<script LANGUAGE='JavaScript'>
				      window.alert('Email does not exist');
					  window.location.href='Book_event.html';
					  </script>");
	}
	else{
		    $check="select date,time from book where date='$date',time='$time'";
	        $result1=mysqli_query($conn,$check);
		    if($check>4){
		              echo("<script LANGUAGE='JavaScript'>
				      window.alert('Slots are Booked');
					  window.location.href='Book_event.html';
					  </script>");
	        }
			$q="insert into book(name, email, mobile, Event_type, city, date, address, time, service) values ('$name','$email','$cnumber', '$event', '$city', '$date', '$address','$time','$chk')";
		    $iquery=mysqli_query($conn,$q);
			if($iquery){
				echo("<script LANGUAGE='JavaScript'>
				      window.alert('Booking successful');
					  window.location.href='menu.html';
					  </script>");
				
			}
			else{
				echo("<script LANGUAGE='JavaScript'>
				      window.alert('Registration not successful');
					  window.location.href='Book_event.html';
					  </script>");
			}
		}
	}
	else{
		echo "All fields are required";
	}
?>
