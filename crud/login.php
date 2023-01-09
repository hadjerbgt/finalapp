<?php
 header("Access-Control-Allow-Headers: Authorization, Content-Type");
header("Access-Control-Allow-Origin: *");
header('content-type: application/json; charset=utf-8');


 $db = mysqli_connect('localhost','root','','userdata');
 $username = $_POST['username'];
 $password = $_POST['password'];

 $stmt=$db->query("SELECT *FROM teacher WHERE `password`='".$password."' AND `username`='".$username."'");
 
 $count=mysqli_num_rows($stmt); 

 if($count > 0){
    echo json_encode("Success");
 } 
 else{
    echo json_encode("Error");
 }
?>


