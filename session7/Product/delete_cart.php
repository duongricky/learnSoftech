<?php include '../config/connectdb.php';
     include '../functions/function_product.php';
?>
<?php 
unset($_SESSION['cart']);
redirectPage("list_products_front.php");
?>