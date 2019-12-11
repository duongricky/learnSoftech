<?php include 'config/connectdb.php';?>
<?php include 'functions/function.php';?>
<?php 
session_destroy();
redirectPage('login.php');
?>