<?php 
include 'model/user_model.php';
class UserController {
	public function checkRequest(){
		$action     = "";
		$action     = isset($_GET['action'])?$_GET['action']:"users";
		$controller = isset($_GET['action'])?$_GET['action']:"products";
		if ($action == 'users' || $action == 'edit_user' || 
			$action == 'delete_user' || $action == 'add_user') {
			switch ($action) {
			case 'users';
				$listUser  = "";
				$userModel = new UserModel;
				//Goi den ham getListUser
				$listUser  = $userModel->getListUser();
		        include 'view/user/list_user.php';
				break;
			case 'edit_user';
				$idEdit = $_GET['id'];//Lay id
				$editUser_1 = new UserModel;
				$resultEdit = $editUser_1->getInfoUser($idEdit);
				$name = $resultEdit['name'];
				if(isset($_POST['edit'])){
					$name = $_POST['name'];
					$editUser_1->editUser($idEdit,$name);
				}
				include 'view/user/edit_user.php';
				break;
			case 'delete_user';
				$idDelete = $_GET['id'];
				$deleteUser_1 = new UserModel;
				$deleteUser_1->deleteUser($idDelete);
				include 'view/user/delete_user.php';
				$deleteUser_1->movePage('index.php');
				break;
			case 'add_user';
				include 'view/user/add_user.php';
				$addUser_1 = new UserModel;
				if (isset($_POST['add'])) {
					$name = $_POST['name'];
					$addUser_1->addUser($name);
				}
			default:
				break;
			}
		}
		if ($action == 'products' || $action == 'edit_product' || 
			$action == 'delete_product' || $action == 'add_product') {
			switch ($action) {
				case 'products':
					
					break;
				
				default:
					# code...
					break;
			}
		}
	}
}
?>