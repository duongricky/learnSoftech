<?php include '../config/connectdb.php';?>
<?php include '../functions/function_product.php';?>
<!DOCTYPE html>
<html lang="en">
<?php include "common_product/header_product.php";?>
<?php
	if (isset($_POST['login_user'])) {
		$checkEmptyUser = checkEmptyLogin($_POST['username'],"username");
		$checkEmptyPass = checkEmptyLogin($_POST['password'],"password");
		$_SESSION['user_name'] = "";
		$_SESSION['user_pass'] = "";
		if (!$checkEmptyUser && !$checkEmptyPass) {
			$username       = $_POST['username'];
			$password       = md5($_POST['password']);
			$CheckLoginUser = LoginUser($conn,$username,$password);
			if($CheckLoginUser->num_rows) {
				$linkCart = "cart.php";
				$_SESSION['login_user'] = true;
				$_SESSION['user_name']  = $username;
				$_SESSION['user_pass']  = $password;
			}
			else {
				echo "<script language='javascript'>
					alert('Bạn đã nhập sai username hoặc pasword');
				</script>";
			}
		}
	}
?>
<body>
	<!-- **// Header //** -->
	<div class="header">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="title_header">
					<a class="navbar-brand" href="#">DN Store Gaming</a>
				</div>
			</div>
		</div>
		</nav>
	</div>
	<!-- end-Header -->
	<!-- Menu -->
	<div class="menu">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
	
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Laptop</a></li>
					<li><a href="#">Desktop</a></li>
					<li><a href="#">Gaming Gear</a></li>
					<li><a href="#">Apple Store</a></li>
					<li><a href="#">Other</a></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li class="linkCart"><a href="cart.php">
					<i class="fa fa-shopping-cart"></i>
					Your Cart(<?php echo count($_SESSION['cart']);?>)</a></li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div>
		</nav>
	</div>
	<!-- end-Menu -->
	<!-- **// Content //** -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<img src="images/banner.jpg" width="100%">
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="content_title">
				<div class="col col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<h2>Laptop Gaming MSI - Chính Hãng</h2>
				</div>
			</div>
			<?php
			$resultList = ListProduct($conn);
				if($resultList->num_rows > 0){
        			while ($row = $resultList->fetch_assoc()) {
            			$id_Product = $row['id'];
            			$product_picture = 'uploadProduct/'.$row['product_picture'];
			?>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
				<div class="thumbnail">
					<a href="#"><img src="<?php echo $product_picture?>" alt="" class="img-responsive"></a>
					<div class="caption text-center">
						<h3><?php echo $row['product_name']?></h3>
						<p><?php echo $row['product_info']?></p>
						<p><a href="buy.php?id=<?php echo $id_Product?>" class="btn btn-primary">Buy Now:<?php echo $row['product_price']?></a>
						</p>
						<span style="color:#cc0000ed">Discout:<?php echo $row['product_discount']?></span>
					</div>
				</div>
			</div>
			<?php
					}
				}
			?>
		</div>
	</div>
	<?php include "common_product/footer.php"; ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>