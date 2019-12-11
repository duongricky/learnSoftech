<?php
	$id_User  = $_GET['id'];
	include 'connectdb.php';
	$sqlDelete = "DELETE FROM user WHERE id = $id_User";
	$conn->query($sqlDelete);
	$conn->close();
	header('Location:list_user.php');
?>