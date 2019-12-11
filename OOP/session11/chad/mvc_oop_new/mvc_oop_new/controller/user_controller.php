<?php 
include 'model/user_model.php';
include 'model/product_model.php';
class UserController {
	public function checkRequest(){
		//dinh nghia cac hanh dong voi user
		//1. List user: list
		//2. Add user: add
		//3. Edit user: edit
		//4. Delete user: delete
		// neu khong co action thi xem nhu dang list user
		$action = "";
		$action = isset($_GET['action'])?$_GET['action']:"list";
		switch ($action) {
			case 'list':
				$listUser = "";
		        $userModel = new UserModel;
		        $listUser = $userModel->getListUser();
		        include 'view/user/list_user.php';
				break;
			case 'edit';
				$idEdit = $_GET['id'];
				//get thong tin can edit ra
				$userModel = new UserModel;
				$userEdit = $userModel->getUserInfo($idEdit);
				if(isset($_POST['Edit'])){
						$name = $_POST['name'];
						// chen du lieu vao database
						$userModel = new UserModel;
						$userModel->editUser($idEdit, $name);
						header("Location: index.php");
					}
				include 'view/user/edit_user.php';

				break;
			case 'delete';
				$idDelete = $_GET['id'];
				//viet ham delete o trong user model
				$userModel = new UserModel();
				$userModel->deleteUser($idDelete);
				// goi va truyen id vao vao trong ham delete user
				//xoa thanh cong thi tro ve trang list_user
				header("Location: index.php");
				
				break;
			case 'add':
					if(isset($_POST['Add'])){
						$name = $_POST['name'];
						// chen du lieu vao database
						$userModel = new UserModel;
						$userModel->insertUser($name);
						header("Location: index.php");
					}
					include 'view/user/add_user.php';
					break;
			case 'list_product':
						# code...
						$page = isset($_GET['page'])?$_GET['page']:1;
						$productModel = new ProductModel;
						$listProduct = $productModel->getListProduct($page);
						$totalProduct =$productModel->getTotalProduct();
						include 'view/product/list_product.php';
						break;
			default:
				# code...
				break;
		}

	}
}
?>