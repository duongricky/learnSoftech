<?php
	$id = $_GET['id'];
	include 'connectdb.php';
	$sql = "DELETE FROM users WHERE id = $id";
	$conn->query($sql);
	//tro ve trang list user
	header("Location: list_user.php");