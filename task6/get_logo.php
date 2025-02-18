<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chpl";

try {
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    // Query to fetch data
    $sql = "SELECT logo_path FROM logo where id=1";
    $result = $conn->query($sql);

    // Check if data is available
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo json_encode(array('logo_path' => $row['logo_path']));
    } else {
        echo json_encode(array('logo_path' => ''));
    }
} catch (Exception $e) {
    echo json_encode(array('error' => $e->getMessage()));
}

$conn->close();
?>