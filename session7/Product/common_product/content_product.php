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