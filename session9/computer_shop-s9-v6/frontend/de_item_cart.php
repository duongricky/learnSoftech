<?php include '../config/connectdb.php';
      include '../functions/function.php';
?>
<?php 
$id = $_GET['id'];
if($_SESSION['cart'][$id]['quantity']>1){
	$_SESSION['cart'][$id]['quantity']-=1;
}else{
	unset($_SESSION['cart'][$id]);
}
redirectPage("cart.php");
?>