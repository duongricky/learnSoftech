<?php include '../config/connectdb.php';
      include '../functions/function_product.php';
?>
<?php 
$idProduct = $_GET['id'];
if($_SESSION['cart'][$idProduct]['quantity']>1){
	$_SESSION['cart'][$idProduct]['quantity']-=1;
}else{
	unset($_SESSION['cart'][$idProduct]);
}
redirectPage("cart.php");
?>