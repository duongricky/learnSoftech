<?php
function checkEmpty($value,$nameCheck) {
	if(empty($value)) {
		$errCheck = "Vui lòng không để trống " . $nameCheck;
		$validate = false;
	}
	else {
		$errCheck = false;
	}
	return $errCheck;
}
function checkPass($password,$nameCheck){
	$patternPass = "/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.* )(?=.*[^a-zA-Z0-9]).{8,16}$/";
	$value = preg_match($patternPass, $password);
	if (empty($password)) {
		$nameCheck = "Vui lòng không để trống password";
	} 
	else if ($value == false){
		$nameCheck = "Mật khẩu phải đúng định dạng";
	}
	else {
		$nameCheck = "";
	}
	return $nameCheck;
}
function checkEmail($email,$nameCheck) {
	if (empty($email)) {
    	$nameCheck = "Vui lòng điền email";
  	}
  	else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
  		$nameCheck = "Vui lòng điền đúng định dạng email";
  	}
  	else $nameCheck = "";
  	return $nameCheck;
}
function checkPhone($phone,$nameCheck) {
	$patternPhone = "/^[0-9]{9,11}$/";
	$value = preg_match($patternPhone,$phone);
	if (empty($phone)) {
		$nameCheck = "Vui lòng nhập số điện thoại";
	}
	else if(!$value) {
  		$nameCheck = "Vui lòng nhập đúng định dạng số điện thoại";
	}
	else $nameCheck = "";
	return $nameCheck;
}
function checkAvatar($avatar,$nameCheck){
	if ($avatar['size'] > 1048576) {
		$nameCheck = "Ảnh không vượt quá 1MB";
	}
	else $nameCheck = "";
	return $nameCheck;
}
function InsertData($conn,$name,$username,$password,$email,$phone,$avatar) {
	//path save avatar
	$path     = 'uploads/';
	//Nếu k chọn avatar thì để avatar mặc định
	if ($avatar['error'] != 0) {
		$fileName = "default.png";
	}
	else $fileName = uniqid().$avatar['name'];
	$pathSave = $path.$fileName;
	move_uploaded_file($avatar['tmp_name'],$pathSave);
	$encode_pass = md5($password);//encoce Password
	//inserted into the database
	$sqlInsert = "INSERT INTO user
	(name,username,password,email,phone,avatar)
	VALUES ('$name','$username','$encode_pass','$email','$phone','$fileName')";
	return $conn->query($sqlInsert);
	$conn->close();
}
function ListUser($conn) {
	$sqlList = "SELECT * FROM user";
	return $conn->query($sqlList);
	$conn->close();
}
function Login($conn,$username,$password) {
	$sqlLogin = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
	return $conn->query($sqlLogin);
}
function redirectPage($link){
		header("Location: ".$link);
	}
?>