<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php
	$id_User = $_GET['id'];
	include 'functions/functions_edit_delete.php';
	DeleteUser($conn,$id_User);
	redirectPage('list_user.php');
?>
<body>
<?php include 'common/navigation.php';?>
    <div id="wrapper">
    	<div id="page-wrapper">
    	</div>
<?php include 'common/footer.php';?>