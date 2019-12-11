<?php include '../config/connectdb.php';
      include '../functions/function.php';
      $cart = $_SESSION['cart'];
      if(empty($cart)){
      	echo "Gio hang khong co gi";
      }else{
      	// code kho hieu
      	$arrId = "(";
      	$i = 1;
      		foreach ($cart as $key => $value) {
      			$arrId.=$key;
      			if($i < count($cart)){
      				$arrId.=',';
      			}
      			$i++;
      		}
      	$arrId.=")";

      	$productInCart = getProductCart($conn, $arrId);

?>
<h1>Gio hang cua ban co:</h1>
<a href="index.php">Tiep tuc mua hang</a></p>
<?php 
    while($row = $productInCart->fetch_assoc()) {
        echo $row['id'].' - '.$row['name'].' - '.$row['price']."<br/>";
	}
}
?>
<p><a href="delete_cart.php">Xoa gio hang</a></p>
