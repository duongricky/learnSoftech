<?php include '../config/connectdb.php';?>
<?php include '../functions/function_product.php';?>
<?php 
session_destroy();
redirectPage('list_products_front.php');
?>