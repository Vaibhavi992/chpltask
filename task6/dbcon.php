<?php

$conn= mysqli_connect("localhost","root","","chpl");


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    // echo "Connected successfully";
}
?>