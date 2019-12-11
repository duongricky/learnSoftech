<?php
	include 'config/connectdb.php';
	include 'controller/user_controller.php';
	include 'controller/products_controller.php';
	include 'controller/category_controller.php';
?>
<?php include 'common/header.php';
	    include 'common/content.php';
?>
<?php
	$checkRequestUser = new UserController;
	$checkRequestUser->checkRequestUser();
	// ------------------------------------- //
	$checkRequestProduct = new ProductController;
	$checkRequestProduct->checkRequestProduct();
	// ------------------------------------- //
	$checkRequestCategory = new CategoryController;
	$checkRequestCategory->checkRequestProduct();
?>
<?php include 'common/footer.php';?>