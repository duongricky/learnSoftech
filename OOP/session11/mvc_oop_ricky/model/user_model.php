<?php
	class UserModel extends ConnectDB {
		//Method add image into database
		public function uploadAvatar($img){
			$path = 'uploadAvatar/';
			if ($img['error'] != 0) {
				$fileName = "default.png";
			}
			else { $fileName = uniqid().$img['name']; } 
			$pathSave = $path.$fileName;
			move_uploaded_file($img['tmp_name'],$pathSave);
			return $fileName;
		}
		public function getListUser(){
			$sql = "SELECT * FROM users";
			$listUser = mysqli_query($this->conn,$sql);
			return $listUser;
			mysqli_close($this->conn);
		}
		public function getListOneUser($idUser){
			$sql = "SELECT * FROM users WHERE id = $idUser";
			$getOneUser = mysqli_query($this->conn,$sql);
			return $getOneUser;
			mysqli_close($this->conn);
		}
		public function EditUser($idUser,$name,$username,$email,$phone){
			$sql = "UPDATE users SET name = '$name',username = '$username',email = '$email',phone = '$phone' WHERE id = $idUser";
			$editUser = mysqli_query($this->conn,$sql);
			return $editUser;
			mysqli_close($this->conn);
		}
		public function addtUser($name,$username,$password,$email,$phone,$avatar){
			$upAvatar = $this->uploadAvatar($avatar);
			$encodePass = md5($password);
			$sql = "INSERT INTO users (name,username,password,email,phone,avatar) VALUES ('$name','$username','$encodePass','$email','$phone','$upAvatar')";
			$addUser = mysqli_query($this->conn,$sql);
			parent::movePage('index.php');
			return $addUser;
			mysqli_close($this->conn);
		}
		public function deleteUser($idUser){
			$sql = "DELETE FROM users WHERE id = $idUser";
			$deleteUser = mysqli_query($this->conn,$sql);
			return $deleteUser;
			mysqli_close($this->conn);
		}
	}
?>