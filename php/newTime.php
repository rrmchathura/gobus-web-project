<?php
include "config.php";

$busNo=$_REQUEST["busNo"];
$dTime=$_REQUEST["dTime"];
$aTime=$_REQUEST["aTime"];
$dLoc=$_REQUEST["dLoc"];
$aLoc=$_REQUEST["aLoc"];
$price=$_REQUEST["price"];

$sql = "INSERT INTO `bus`(`id`, `bus`,`dLoc`, `dTime`, `aLoc`,`aTime`,`price`) 
VALUES ('','$busNo','$dLoc','$dTime','$aLoc','$dTime','$price')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>