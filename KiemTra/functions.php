<?
	function checkName($name) {
	if(empty($value)) {
		$errCheck = "Vui lòng không để trống tên";
	}
	else {
		$errCheck = "";
	}
	return $errCheck;
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
	function checkPass($password,$nameCheck){
	// var_dump($value);exit();
	if (empty($password)) {
		$nameCheck = "Vui lòng không để trống password";
	}
	else if (strlen($password) < 6){
		$nameCheck = "Mật khẩu phải có độ dài hơn 6 ký tự";
	}
	else {
		$nameCheck = "";
	}
	return $nameCheck;
	}
?>	