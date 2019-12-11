<?php

$server = 'localhost';
$username = 'root';
$password = 'none';
$database = 'php11_shop';
$conn = new mysqli($server, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO users (name, username, password, avatar, phone, email, description)
VALUES ('Canh', 'hoaicanh', '1313', 'avatar.jpg', '0998997788', 'john@example.com', 'I like PHP')";

$conn->query($sql);
echo "Connected successfully";