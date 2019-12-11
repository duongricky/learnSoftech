<?php include '../config/connectdb.php';
      include '../functions/function.php';
?>
<?php 
$id = $_GET['id'];
if(!isset($_SESSION['cart'][$id])){
	$_SESSION['cart'][$id]['id'] = $id;
	$_SESSION['cart'][$id]['quantity'] = 1;
}else{
	$_SESSION['cart'][$id]['id'] = $id;
	$_SESSION['cart'][$id]['quantity'] += 1;
}
redirectPage("index.php");
?>