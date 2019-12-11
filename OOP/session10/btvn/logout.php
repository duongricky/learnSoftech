<?php include 'config/connectdb.php';?>
<?php include 'functions/functions.php';?>
<?php 
session_destroy();
redirectPage('login.php');
?>