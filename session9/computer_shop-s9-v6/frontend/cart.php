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
	$total = 0;
    while($row = $productInCart->fetch_assoc()) {
    	$id = $row['id'];
    	$price = $row['price']*(100-$row['discount'])/100;
    	$total += $price*$cart[$id]['quantity'];
        echo "ID: ".$row['id'].' - '."Name: ".$row['name'].' - '."Price: ".$price." Quantity ".$cart[$id]['quantity'];
        echo " <a href='delete_item_cart.php?id=$id'>Delete</a>";
        echo " | <a href='in_item_cart.php?id=$id'>Increase</a>";
		echo " | <a href='de_item_cart.php?id=$id'>Decrease</a>";

        echo "<br/>";
	}
}
?>
<p>Tong gia cua gio hang la: <?php echo $total;?></p>
<p><a href="delete_cart.php">Xoa gio hang</a></p>
