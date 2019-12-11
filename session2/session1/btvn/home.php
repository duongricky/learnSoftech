<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<!-- menu -->
	<nav class="navbar navbar-default navbar-inverse" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">DN Fashion</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li class="active"><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Địa chỉ : 149 Lê Đình Lý, Đà Nẵng</a></li>
			</ul>
			</div><!-- /.navbar-collapse -->

		</div>
	</nav>
	<div class="container">
		<!-- List-item -->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<h3>Fashion New</h3>
				<ul class="list-group">
					<li class="list-group-item">Quần áo</li>
					<li class="list-group-item">Giày dép</li>
					<li class="list-group-item">Balo, cặp, xách</li>
					<li class="list-group-item">Sản phẩm khác</li>
				</ul>
			</div> <!-- end-list -->
			<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
				<!-- Slider -->
				<div id="carousel-id" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-id" data-slide-to="0" class=""></li>
						<li data-target="#carousel-id" data-slide-to="1" class=""></li>
						<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img src="images/1.jpg">
						</div>
						<div class="item">
							<img src="images/2.jpg">
						</div>
						<div class="item active">
							<img src="images/3.jpg">
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
					<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div> <!-- end-Slider -->
				<hr>
				<!-- Contents -->
				<div class="row" id="rowContent-1">
						<?php for($i = 0; $i <= 2; $i++){?>
							<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
	     					<div class="thumbnail">
	    						<img class="img-responsive" src="images/<?php echo "demo$i"?>.jpg" width="100%">
	    				        <div class="caption">
									<h4 class="gia pull-right">$24.99</h4>
	    							<h4><a href="">First Product</a></h4>
	    							<p>
	    								This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
	    							</p>
	 								<div class="danhgia">
	 									<div class="soreview pull-right"><a href="services.php">
	 									Xem chi tiết</a>
	 									</div>
										<div class="ngoisao">
											<b class="glyphicon glyphicon-star"></b>
											<b class="glyphicon glyphicon-star"></b>
											<b class="glyphicon glyphicon-star"></b>
											<b class="glyphicon glyphicon-star"></b>
											<b class="glyphicon glyphicon-star"></b>
										</div>
	 								</div>
	    						</div>
	    					</div>
	     				</div>
						<?php }
						?>
     			</div>
    		</div>
			</div>
		</div>
	</div>	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>