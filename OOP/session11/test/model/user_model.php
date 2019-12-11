<?php 
include 'config/connectdb.php';
class UserModel extends ConnectDB{
	public function movePage($link) {
		header('Location:' .$link);
	}
	public function getListUser(){
		$sql = "SELECT * FROM users";
		$listUser = mysqli_query($this->conn,$sql);
		return $listUser;
	}
	public function getInfoUser($id){
		$sql = "SELECT * FROM users WHERE id = $id";
		$userInfo = mysqli_query($this->conn, $sql);
		if ($userInfo->num_rows) {
			return $userInfo->fetch_assoc();
		}
	}
	public function editUser($idUser,$name){
		$sql = "UPDATE users SET name = '$name' WHERE id = $idUser";
		$resultEdit = mysqli_query($this->conn,$sql);
		return $resultEdit;
	}
	public function deleteUser($idUser){
		$sql = "DELETE FROM users WHERE id = $idUser";
		$resultDelete = mysqli_query($this->conn,$sql);
		return $resultDelete;
		mysqli_close($this->conn);
	}
	public function addUser($name){
		$sql = "INSERT INTO users (name) VALUES ('$name')";
		$resultAdd = mysqli_query($this->conn,$sql);
		return $resultAdd;
		mysqli_close($this->conn);
	}
}
?>