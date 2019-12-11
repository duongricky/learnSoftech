<?php include '../config/connectdb.php';
      include '../functions/function_product.php';
?>
<?php 
$id_Product = $_GET['id'];
unset($_SESSION['cart'][$id_Product]);
redirectPage("cart.php");
?>