<?php include '../config/connectdb.php';
      include '../functions/function.php';
?>
<?php 
unset($_SESSION['cart']);
redirectPage("index.php");
?>