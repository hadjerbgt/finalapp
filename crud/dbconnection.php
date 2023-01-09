<?php 

function dbconnection()
{
	$conn=mysqli_connect("localhost","root","","userdata");
	return $conn;
}

 ?>