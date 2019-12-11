<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Form PHP</title>
	<style type="text/css">
		span {
			color: red;
		}
	</style>
</head>
<body>
	<?php
		//Validation Form
		include('connectdb.php');
		$errName       = $errUser = $errPass = $errEmail = $errCity = $errGender 
                       = $errAvatar = $errPhone = $errAvatarSize = "" ;
		$name          = $username = $password = $email = $phone = $gender = "";
		$validate      = true;
		$complete      = $noClick = "";
		$arrayCity     = array(1 => "Quảng Nam",2 => "Đà Nẵng",3 => "Hà Nội");
		$arrayGender   = array('male' => 'nam' , 'female' => 'nu');
		//$avatarSizeMax = 1024*1024;
		if(isset($_POST['register'])) {
			$name     = $_POST['name'];
			$username = $_POST['username'];
			$email    = $_POST['email'];
			$phone    = $_POST['phone'];
			$city     = $_POST['city'];
			$gender   = $_POST['gender'];
			$avatar   = $_FILES['avatar'];
			$password = $_POST['password'];
			//var_dump($avatar);exit();
			//Validate All Data
			if(empty($name)) {//check empty name
				$errName  = "Bạn chưa nhập tên";
				$validate = false;
			}	
			if(empty($username)) {//check empty username
				$errUser  = "Bạn chưa nhập username";
				$validate = false;
			}
			$sqlValiEmail  = "SELECT id FROM user WHERE username = '$username'";
			$queryUsername = $conn->query($sqlValiEmail);
			if ($queryUsername->num_rows) {
				$errUser  = "Username đã tồn tại";
				$validate = false;
			}
			//Check the special characters in the password
			$patternPass = '/[\'^£$%&*()}{@#~?><>,|=_+¬-]{6,}/';	
			$checkSC     = preg_match($patternPass, $password);
			// var_dump(strlen($password));
			if($checkSC == false) {
				$errPass  = "Mật khẩu phải có 1 ký tự đặt biệt và ít nhất 6 ký tự";
				$validate = false;
			}
			// if(strlen($password) > 6) {
			// 	$errPass  = "Mật khẩu phải ít nhất 6 ký tự";
			// 	$validate = false;
			// }
			if(empty($password)) {
				$errPass  = "Bạn chưa nhập password";
				$validate = false;
			}
			if(empty($email)) {
				$errEmail = "Bạn chưa nhập email";
				$validate = false;
			}
			$sqlValiEmail = "SELECT id FROM user WHERE email = '$email'";
			$queryEmail   = $conn->query($sqlValiEmail);
			if ($queryEmail->num_rows) {
				$errEmail = "Email đã tồn tại";
				$validate = false;
			}
			if(empty($phone)) {
				$errPhone = "Bạn chưa nhập Số điện thoại";
				$validate = false;
			}
			if(empty($gender)) {
				$errGender = "Bạn chưa chọn giới tính";
				$validate  = false;
			}                     
			if(empty($city)) {
				$errCity  = "Bạn chưa chọn thành phố";
				$validate = false;
			}
			//var_dump($_FILES['avatar']);
			if($avatar['error'] != 0) {
				$errAvatar = "Bạn chưa chọn avatar";
				$validate  = false;
			}
			if ($_FILES['avatar']['size'] > 1048576) {
				$errAvatarSize = "Ảnh không quá 1MB";
				$validate      = false;
			}
			else {
				$path     = 'uploadfiles/';
				$fileName = uniqid().$avatar['name'];
				$pathSave = $path.$fileName;
				move_uploaded_file($avatar['tmp_name'],$pathSave);
			}
			if($validate == true) {
				$complete = "Đăng ký thành công";
				$encode_pass = md5($password);
				//var_dump($_FILE['avatar']['size']); exit();
				// Insert Data
				$sqlInsert = "INSERT INTO user (name,username,password,email,phone,avatar) VALUES ('$name','$username','$encode_pass','$email','$phone','$fileName')";
				$conn->query($sqlInsert);
			}
		}
		$conn->close();
		//-------------------------------------------------------------------------------------//
	?>
	<h1>Demo Form</h1>
	<form action="<?php echo $_SERVER['PHP_SELF'];?>" name="DK" method="post" enctype="multipart/form-data">
		<!-- Name -->
		<p>Name:<input type="text" name="name" value="<?php echo $name;?>">
			<span><?php echo $errName;?></span>
		</p>
		<p>
			Username:<input type="text" name="username" value="<?php echo $username;?>">
			<span><?php echo $errUser;?></span>
		</p>
		<p>
			Password:<input type="password" name="password" value="<?php echo $password;?>">
			<span><?php echo $errPass;?></span>
		</p>
		<!-- Email -->
		<p>Email:<input type="email" name="email" value="<?php echo $email;?>">
			<span><?php echo $errEmail;?></span>
		</p>
		<p>Phone:<input type="text" name="phone" value="<?php echo $phone;?>">
			<span><?php echo $errPhone;?></span>
		</p>
		<!-- City -->
		<p>City:
				<select name="city">
					<option value="">City</option>
					<option value="1" <?php echo ($city == 1)?"selected":"";?>>Quảng Nam</option>
					<option value="2" <?php echo ($city == 2)?"selected":"";?>>Đà Nẵng</option>
					<option value="3" <?php echo ($city == 3)?"selected":"";?>>Hà Nội</option>
				</select>
				<span><?php echo $errCity;?></span>
		</p>
		<!-- Gender -->
		<p>
			<span style="color: black">Gender: </span>
			Nam 
			<input type="radio" name="gender" value="nam"
			<?php echo ($gender == "nam")?"checked":"";?>>
			Nu
			<input type="radio" name="gender" value="nu"
			<?php echo ($gender == "nu")?"checked":"";?>>
			<span><?php echo $errGender;?></span>
		</p>
		<!-- Files -->
		<p>Avatar: <input type="file" name="avatar" value="<?php echo $avatar['name'];?>">
			<span><?php echo $errAvatar;?></span>
			<span><?php echo $errAvatarSize;?></span>
		</p>
		<!-- Register -->
		<p><input type="submit" name="register" value="Registration"></p>
		<span><?php echo $complete;?></span>
	</form>
</body>
</html>