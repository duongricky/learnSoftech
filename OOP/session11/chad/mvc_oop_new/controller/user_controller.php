<?php 
include 'model/user_model.php';
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

				break;
			case 'delete';
				$idDelete = $_GET['id'];
				
				break;
			default:
				# code...
				break;
		}

	}
}
?>