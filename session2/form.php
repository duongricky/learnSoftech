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
	<h1>Demo Form</h1>
	<form action="<?php echo $_SERVER['PHP_SELF'];?>" name="DK" method="post" enctype="multipart/form-data">
		<!-- Name -->
		<p>Name:<input type="text" name="name" value="<?php echo $name;?>">
			<span><?php echo $errName;?></span>
		</p>
		<!-- Email -->
		<p>Email:<input type="email" name="email" value="<?php echo $email;?>">
			<span><?php echo $errEmail;?></span>
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
			<input type="radio" name="gender" value="nam">
			<?php echo ($gender == "nam")?"checked":"";?>>
			Nu 
			<input type="radio" name="gender" value="nu"
			<?php echo ($gender == "nu")?"checked":"";?>>
			<span><?php echo $errGender;?></span>
		</p>
		<!-- Files -->
		<p><input type="file" name="avatar"></p>
		<span><?php echo $errAvatar;?></span>
		<!-- Register -->
		<p><input type="submit" name="register" value="Registration"></p>
		<span><?php echo $complete;?></span>
	</form>
	<!-- Xu ly form -->
	<?php
		$errName  = $errEmail = $errCity = "";
		$name     = $email = "";
		$validate = true;
		$complete = $noClick = "";
		$arrayCity = array(1 => "Quảng Nam",2 => "Đà Nẵng",3 => "Hà Nội");
		$arrayGender = array('male' => 'nam' , 'female' => 'nu');
		if(isset($_POST['register'])) {
			$name    = $_POST['name'];
			$email   = $_POST['email'];
			$city    = $_POST['city'];
			$gender  = $_POST['gender'];
			$avatar  = $_FILES['avatar'];
			$errName = $errEmail = $errCity = $errGender = $errAvatar ="";
			if(empty($name)) {
				$errName = "Bạn chưa nhập tên";
				$validate = false;
			}	
			if(empty($email)) {
				$errEmail = "Bạn chưa nhập email";
				$validate = false;
			}
			if(empty($gender)) {
				$errGender = "Bạn chưa chọn giới tính";
				$validate = false;
			}
			if(empty($city)) {
				$errCity = "Bạn chưa chọn thành phố";
				$validate = false;
			}
			if($_FILE['avatar']['error'] != 0) {
				$errFile = "Bạn chưa chọn avatar";
				$validate = false;
			}
			else {
				$path = 'uploadfiles/';
				$pathSave = $path.uniqid().$avatar['name'];
				move_uploaded_file($avatar['tmp_name'], $pathSave);
			}
			if($validate) {
				$complete = "Đăng ký thành công";
				echo $arrayCity[$city];
			}
		}
		else {
			$noClick = "Bạn chưa nhấn đăng ký";
		}
	?>
</body>
</html>