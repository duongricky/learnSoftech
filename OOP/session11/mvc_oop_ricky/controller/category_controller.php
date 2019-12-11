<?php
	include 'model/category_model.php';
	class CategoryController {
		public function checkRequestProduct(){
			$action = $_GET['action'];
			switch ($action) {
				case 'list_category':
					$listCate       = new CategoryModel();
					$resultListCate = $listCate->listCategory();
					include 'view/categories/list_category.php';
					break;
				case 'edit_category':
					$id_Cate    = $_GET['id'];
					$getOneCate = new CategoryModel();
					$editCate   = new CategoryModel();
					$reGetOne   = $getOneCate->getOneCate($id_Cate);
					if (isset($_POST['edit_category'])) {
						$category_name = $_POST['category_name'];
						$editCate->editCate($id_Cate,$category_name);
						//Gọi lại để update data trên form
						$reGetOne      = $getOneCate->getOneCate($id_Cate);
					}
					include 'view/categories/edit_category.php';
					break;
				case 'add_category':
					$addCate = new CategoryModel();
					if (isset($_POST['add_category'])) {
						$category_name = $_POST['category_name'];
						$resultAdd     = $addCate->addCategory($category_name);
					}
					include 'view/categories/add_category.php';
					break;
				case 'delete_category':
					$id_Cate = $_GET['id'];
					$delete  = new CategoryModel();
					// var_dump($delete->deleteCate($id_Cate));
					$resultDele = $delete->deleteCate($id_Cate);
					break;
				default:
					break;
			}
		}
	}
?>