<?php include '../config/connectdb.php';
      include '../functions/function_product.php';
?>
<?php 
$idProduct = $_GET['id'];
if ($_SESSION['cart'][$idProduct]['quantity'] >= 5) {
	$_SESSION['cart'][$idProduct]['quantity'] = $_SESSION['cart'][$idProduct]['quantity'];
	echo "<script language='javascript'>
					alert('Không được mua quá 5 sp');
				</script>";
}
else {
	$_SESSION['cart'][$idProduct]['quantity']+=1;
}
redirectPage("cart.php");
	echo "<script language='javascript'>
					alert('Không được mua quá 5 sp');
				</script>";
?>