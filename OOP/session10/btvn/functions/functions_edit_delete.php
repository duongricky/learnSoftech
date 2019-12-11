<?php
	//Các Hàm Edit
	function ListUser_Edit($conn,$id_User) {
		return $conn->query("SELECT * FROM user WHERE id = $id_User");
	}
	function checkEmpty($value,$nameCheck) {
	if(empty($value)) {
		$errCheck = "Vui lòng không để trống " . $nameCheck;
	}
	else {
		$errCheck = false;
	}
	return $errCheck;
	}
	function checkEmail($conn,$email,$nameCheck, $checkCurrentEmail) {
		$sqlValiEmail = "SELECT * FROM user WHERE email = '$email'";
		$countEmail = $conn->query($sqlValiEmail);
		if (empty($email)) {
    	$nameCheck = "Vui lòng điền email";
  		}
  		else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
  			//var_dump("expression");exit();
  			$nameCheck = "Vui lòng điền đúng định dạng email";
  		}
  		else if($countEmail->num_rows > 0 && $email != $checkCurrentEmail) {
			$nameCheck = "Email đã tồn tại";
			return false;
		}
		else {
			$nameCheck = "";
		}
		return $nameCheck;
	}
	//Hàm xóa
	function DeleteUser($conn,$id_User) {
		return $conn->query("DELETE FROM user WHERE id = $id_User");
	}
	function redirectPage($link){
		header("Location: ".$link);
	}
	function UpdateEdit($id_User,$conn,$name,$username,$email,$phone) {
		$sqlUpdate = "UPDATE user SET name = '$name',username = '$username',email = '$email',phone = '$phone' WHERE id = $id_User";
		$completeUpdate = $conn->query($sqlUpdate);
		$conn->close();
		return $completeUpdate;
	}
	function redirectPage($link){
		header("Location: ".$link);
	}
?>