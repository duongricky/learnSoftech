<?php
require_once 'config/database.php';
require_once 'model/homepage_model.php';
class HomePageController {

	public function requestByCustomer(){
		$action = isset($_GET['action'])?$_GET['action']:'home';
		switch ($action) {
			case 'home':
				//list product
				// tao model va co mot ham de lay danh sach san pham ra
				$productCategoryID = isset($_GET['product_category_id'])?$_GET['product_category_id']:NULL;
				$homePageModel = new HomePageModel();
				$listProduct = $homePageModel->getListProduct($productCategoryID);
				$listUser = $homePageModel->getListUser();
				$listCategory = $homePageModel->getListCategory();
				include 'view/homepage/list_product.php';

				break;
			case 'delete':
				$id = isset($_GET['id'])?$_GET['id']:NULL;
				$homePageModel = new HomePageModel();
				$listProduct = $homePageModel->deleteProduct($id);
				break;
			case 'buy':
				# code...
				break;
			case 'cart':
				# code...
				break;
			case 'payment':
				# code...
				break;
			case 'login':
				# code...
				break;
			case 'logout':
				# code...
				break;
			default:
				# code...
				break;
		}
		
	}
}