<?php include '../config/connectdb.php';
      include '../functions/function.php';
?>
<?php 
$id = $_GET['id'];
$_SESSION['cart'][$id] = $id;
redirectPage("index.php");
?>