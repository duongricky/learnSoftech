<?php
require_once 'config/database.php';
require_once 'model/homepage_model.php';
class HomePageController {
	public function requestByCustomer() {
		$action = isset($_GET['action'])?$_GET['action']:'home';
		switch ($action) {
			case 'home':
				include '/view/homepage/add_product.php';
				break;
			default:
				# code...
				break;
		}
	}
}