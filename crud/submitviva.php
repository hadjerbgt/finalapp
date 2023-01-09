<?php

header("Access-Control-Allow-Headers: Authorization, Content-Type");
header("Access-Control-Allow-Origin: *");
header('content-type: application/json; charset=utf-8');
include("dbconnection.php");
$conn=dbconnection();



    $name = $_POST["name"];
    $year = $_POST["year"];
    $firstsudent = $_POST["firstsudent"];
    $secondstudent = $_POST["secondstudent"];
    $thirdstudent = $_POST["thirdsecond"];
    $supervisorname = $_POST["supervisorname"];
    $supnote = $_POST["supnote"];
    $presidentname = $_POST["presidentname"];
    $viprenote = $_POST["viprenote"];
    $examinatorname = $_POST["examinatorname"];
    $exmnote = $_POST["exmnote"];
    $finalmark = $_POST["finalmark"];



$query="INSERT INTO `projectinfo`(`name`, `year`, `firststudent`, `secondstudent`, `thirdstudent`, `supervisorname`, `supnote`, `presidentname`, `viprenote`, `examinatorname`, `exmnote`, `finalmark`) VALUES ('$name','$year','$firstsudent','$secondstudent','$thirdstudent','$supervisorname','$supnote','$presidentname','$viprenote',' $examinatorname','$exmnote','$finalmark')";
$exe = mysqli_query($conn,$query);

$arr=[];

if($exe){
    $arr["success"]="true";
}else
{
    $arr["failure"]="false";
}
print(json_encode($arr));                   
?>

