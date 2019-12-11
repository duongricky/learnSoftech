<?php include '../config/connectdb.php';?>
<?php include '../functions/function.php';
$listProducts = listProduct($conn);
// unset($_SESSION['cart']);
// var_dump($_SESSION['cart']);
?>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>
<div class="container">
<div class="col-xs-12">
    <a href="cart.php" class="pull-right btn btn-danger btn-cart">Your cart(<?php echo count($_SESSION['cart']);?>)</a>
</div>
<?php 
    while($row = $listProducts->fetch_assoc()) {
        $id = $row['id'];
?>
<div class="col-xs-12 col-md-6">
	<!-- First product box start here-->
	<div class="prod-info-main prod-wrap clearfix">
		<div class="row">
				<div class="col-md-5 col-sm-12 col-xs-12">
					<div class="product-image"> 
						<img src="../uploads/<?php echo $row['image']?>" class="img-responsive rotprod"> 
						<span class="tag2 hot">
							HOT
						</span> 
					</div>
				</div>
				<div class="col-md-7 col-sm-12 col-xs-12">
				<div class="product-deatil">
						<h5 class="name">
							<a href="#">
								<?php echo $row['name']?>
							</a>                        

						</h5>
                        <p class="price-container-discount">
                            <span><?php echo $row['price']?></span>
                        </p>
						<p class="price-container">
							<span><?php echo $row['price']*(100-$row['discount'])/100?></span>
						</p>

						<span class="tag1"></span> 
				</div>
				<div class="description">
					<p><?php echo $row['description']?> </p>
				</div>
				<div class="product-info smart-form">
					<div class="row">
						<div class="col-md-12"> 
							<a href="buy.php?id=<?php echo $id?>" class="btn btn-danger btn-cart"><span>Add to cart</span></a>
                           
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end product -->
</div>
<?php }?>

        
</div>
</div>
</body>
</html>

