<?php
include 'model/user_model.php';
class UserController {
	public function checkRequestUser(){
		$action     = isset($_GET['action'])?$_GET['action']:"users";
		if ($action == 'users' || $action == 'edit_user' || $action == 'add_user' || $action == 'delete_user') {
			switch ($action) {
			case 'users';
				$listUsers  = new UserModel;
				$resultList = $listUsers->getListUser();
				include 'view/user/list_user.php';
				break;
			case 'edit_user';
				$editUser = new UserModel;
				$idUser = $_GET['id'];
				$reListOne = new UserModel;
				$inAuser = $reListOne->getListOneUser($idUser);
				if (isset($_POST['editUser'])) {
					$name     = $_POST['name'];
					$username = $_POST['username'];
					$email    = $_POST['email'];
					$phone    = $_POST['phone'];
					$editUser->EditUser($idUser,$name,$username,$email,$phone);
					//Gọi lại để update data trên form
					$inAuser = $reListOne->getListOneUser($idUser);
				}
				include 'view/user/edit_user.php';
				break;
			case 'add_user';
				$addUser = new UserModel;
				if (isset($_POST['addUser'])) {
					$name     = $_POST['name'];
					$username = $_POST['username'];
					$email    = $_POST['email'];
					$phone    = $_POST['phone'];
					$password = $_POST['password'];
					$avatar    = $_FILES['avatar'];
					// var_dump($avatar); exit();
					$addUser->addtUser($name,$username,$password,$email,$phone,$avatar);
				}
				include 'view/user/add_user.php';
				break;
			case 'delete_user';
				$idUser = $_GET['id'];
				$deleteUser = new UserModel;
				$deleteUser->deleteUser($idUser);
				$deleteUser->movePage('index.php');
				break;
			default:
				break;
			}
		}
	}
}
?>