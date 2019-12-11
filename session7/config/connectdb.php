<?php
	session_start();
	$conn = new mysqli('localhost','root','mysql','php11_shop');
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
?>