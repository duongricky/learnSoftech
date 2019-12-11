<?php
session_start();
$server = 'localhost';
$usernamedb = 'root';
$passworddb = 'none';
$database = 'php11_shop';

$conn = new mysqli($server, $usernamedb, $passworddb, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 