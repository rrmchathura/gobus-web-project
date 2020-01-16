<?php
include "config.php";

$busNo=$_REQUEST["busNo"];
$name=$_REQUEST["name"];
$type=$_REQUEST["type"];


$sql = "INSERT INTO `bus`(`id`, `busNo`, `name`, `type`) 
VALUES ('','$busNo','$name','$type')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>