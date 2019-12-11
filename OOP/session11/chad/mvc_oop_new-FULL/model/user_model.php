<?php 
include 'config/connectdb.php';
class UserModel extends ConnectDB{
	public function getListUser(){
		$sql = "SELECT * FROM users";
		$listUser = mysqli_query($this->conn,$sql);
		return $listUser;
	}
	public function deleteUser($id){
		$sql = "DELETE FROM users WHERE id = $id";
		mysqli_query($this->conn,$sql);
		
	}
	public function insertUser($name){
		//var_dump($name);
		$sql = "INSERT INTO users (name) VALUES ('$name')";
		mysqli_query($this->conn,$sql);
	}
	public function getUserInfo($id){
		$sql = "SELECT * FROM users WHERE id = $id";
		$userInfo = mysqli_query($this->conn, $sql);
		return $userInfo->fetch_assoc();
	}
	public function editUser($id, $name){
		$sql = "UPDATE users SET name = '$name' WHERE id = $id";
		mysqli_query($this->conn, $sql);
	}
}
?>