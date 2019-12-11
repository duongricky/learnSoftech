<?php include '../config/connectdb.php';
      include '../functions/function_product.php';
?>
<?php
$idProduct = $_GET['id'];
if(!isset($_SESSION['cart'][$idProduct])){
	$_SESSION['cart'][$idProduct]['id'] = $idProduct;
	$_SESSION['cart'][$idProduct]['quantity'] = 1;
}else{
	$_SESSION['cart'][$idProduct]['id'] = $idProduct;
	$_SESSION['cart'][$idProduct]['quantity'] += 1;
}
redirectPage("list_products_front.php");
?>