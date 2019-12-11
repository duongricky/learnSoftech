<?php
	// echo $_POST['name'];
	// echo "<br>";
	// echo $_POST['email'];
	//isset() kiem tra bien co ton tai hay k
	//empty() de kiem tra bien trống hay k?
	//is_null() kiểm tra biến có phải null hay k?
	$validate = true;
	if(empty($_POST['name'])) {
		echo "Bạn chưa nhập tên" ;
		$validate = false;
	}
	if(empty($_POST['email'])) {
		echo "<br>Bạn chưa nhập email" ;
		$validate = false;
	}
	if($validate){
		echo "Đăng ký thành công";
	}
?>