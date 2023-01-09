<?php 
header("Access-Control-Allow-Headers: Authorization, Content-Type");
header("Access-Control-Allow-Origin: *");
header('content-type: application/json; charset=utf-8');
include("dbconnection.php");
$conn=dbconnection();

$queryResult=$conn->query("SELECT * FROM projectinfo");

$result=array();

while($fetchdata=$queryResult->fetch_assoc()){
    $result[]=$fetchdata;
}
print(json_encode($result));
?> 