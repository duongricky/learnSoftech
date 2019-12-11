<?php
include 'model/products_model.php';
class ProductController {
	public function checkRequestProduct(){
		$action = $_GET['action'];
		switch ($action) {
			case 'list_products':
				$page           = isset($_GET['page'])?$_GET['page']:1;
				$listProducts   = new ProductModel();
				$resultProducts = $listProducts->getListProduct($page);
				$totalProducts  = new ProductModel();
				$resultTotal    = $totalProducts->getTotalProduct();
				include 'view/products/list_products.php';
				break;
			case 'edit_products':
				$idProduct      = $_GET['id'];
				$editProducts   = new ProductModel();

				$getOneProducts = new ProductModel();
				$getAllCategory = new ProductModel();
				$resultGet      = $getOneProducts->getOneUser($idProduct);
				$resultGetAll   = $getAllCategory->getCategoryProduct();
				if (isset($_POST['edit_products'])) {
					$product_name     = $_POST['product_name'];
					$product_info     = $_POST['product_info'];
					$product_price    = $_POST['product_price'];
					$product_discount = $_POST['product_discount'];
					$pro_category_id  = $_POST['product_category'];
		      $resultEdit = $editProducts->editProduct($idProduct,$product_name,$product_info,$product_price,$product_discount,$pro_category_id);
						//Gọi lại để update data trên form
					$resultGet  = $getOneProducts->getOneUser($idProduct);
				}
				include 'view/products/edit_products.php';
				break;
			case 'add_products':
				$getAllCategory = new ProductModel();
				$addProducts      = new ProductModel();
				$resultGetAll   = $getAllCategory->getCategoryProduct();
				if (isset($_POST['add_products'])) {
					include 'view/products/add_products.php';
					$product_name     = $_POST['product_name'];
					$product_info     = $_POST['product_info'];
					$product_price    = $_POST['product_price'];
					$product_discount = $_POST['product_discount'];
					$product_picture  = $_FILES['product_picture'];
					$pro_category_id  = $_POST['product_category'];
					$resultAdd = $addProducts->addProducts($product_name,$product_info,$product_price,$product_discount,$pro_category_id,$product_picture);
				}
				include 'view/products/add_products.php';
				break;
			case 'delete_products':
				$idDelete       = $_GET['id'];
				$deleteProducts = new ProductModel();
				$deleteProducts->deleteProducts($idDelete);
				$deleteProducts->movePage('index.php?action=list_products');
				break;
			default:
				break;
		}
	}
}