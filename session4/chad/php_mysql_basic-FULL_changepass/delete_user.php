<?php
	$id = $_GET['id'];
	//var_dump($id);exit();
	include 'connectdb.php';
	$sql = "DELETE FROM user WHERE id = $id";
	$conn->query($sql);
	//tro ve trang list user
	header("Location: list_user.php");
	