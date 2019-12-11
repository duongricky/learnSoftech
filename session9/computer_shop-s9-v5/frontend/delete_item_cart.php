<?php include '../config/connectdb.php';
      include '../functions/function.php';
?>
<?php 
$id = $_GET['id'];
unset($_SESSION['cart'][$id]);
redirectPage("cart.php");
?>