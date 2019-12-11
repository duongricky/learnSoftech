<?php 
include 'config/connectdb.php';
class UserModel extends ConnectDB{
	public function getListUser(){
		$sql = "SELECT * FROM users";
		$listUser = mysqli_query($this->conn,$sql);
		return $listUser;
	}
}
?>