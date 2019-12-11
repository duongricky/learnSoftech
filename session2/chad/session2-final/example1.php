<!DOCTYPE html>
<html>
<head>
	<title>Example 1 - Session 2</title>
	<style type="text/css">
		span{
			color: red;
		}
	</style>
</head>
<body>
	<?php 
	//var_dump($_POST);
	$errName = $errEmail = $errCity = $errGender = $errAvatar = "";
	$name = $email = $city = $gender = "";
	$check = true;
	$arrCity = array(1 => "Da Nang", 2 => "Ha Noi", 3 => "Ho Chi Minh");
	$arrGender = array('male' => "Male", 'female' => "Female");

	if(isset($_POST['register'])){
		//var_dump($_FILES);
		//echo "ban dan dang ky";
		$name = $_POST['name'];
		$email = $_POST['email'];
		$city = $_POST['city'];
		$gender = $_POST['gender'];
		$avatar = $_FILES['avatar'];
		if($name == ""){
			$errName = "vui long dien ten vao";
			$check = false;
		}
		if($email == ""){
			$errEmail = "vui long dien email vao";
			$check = false;
		}
		if($city == ""){
			$errCity = "vui long chon city vao";
			$check = false;
		}
		if($gender == ""){
			$errGender = "vui long chon gender vao";
			$check = false;
		}
		if($_FILES['avatar']['error'] != 0){
			$errAvatar = "vui long chon avatar";
			$check = false;
		}else{
			//duong dan luu file
			$path = "uploads/";
			$pathSave = $path.uniqid().$avatar['name'];
			move_uploaded_file($avatar['tmp_name'], $pathSave);

		}
		//in du lieu ra
		if($check){
			echo $name;
			echo "<br>";
			echo $email;
			echo "<br>";
			echo "<img src ='".$pathSave."' width='300' height = '300'>";
			echo "<br>";
			echo $arrCity[$city];
			echo "<br>";
			echo $arrGender[$gender];
		}
	}else{
		echo "ban chua nhan dang ky";
	}
	?>
	<h1>Form post</h1>
	<form action="<?php echo $_SERVER['PHP_SELF']?>" name = "register" method="post" enctype="multipart/form-data">
		<p>Name:<input type="text" name="name" value="<?php echo $name;?>">
		<span><?php echo $errName;?></span>
		</p>
		<p>Email:<input type="email" name="email" value="<?php echo $email;?>">
		<span><?php echo $errEmail;?></span>
		</p>
		<p>City:
		<select name = "city">
			<option value="">Choose city</option>
			<option value="1" <?php echo ($city == 1)?"selected":"";?>>Da Nang</option>
			<option value="2" <?php echo ($city == 2)?"selected":"";?>>Ha Noi</option>
			<option value="3" <?php echo ($city == 3)?"selected":"";?>>Ho Chi Minh</option>
		</select>
		<span><?php echo $errCity;?></span>
		</p>
		<p>Gender:
		<input type="radio" name="gender" value="female" 
		<?php echo ($gender == "female")?"checked":"";?>> Female
		<input type="radio" name="gender" value="male" 
		<?php echo ($gender == "male")?"checked":"";?>> Male
		<span><?php echo $errGender;?></span>
		</p>
		<p>Avatar:<input type="file" name="avatar">
		<span><?php echo $errAvatar;?></span>
		</p>
		<p><input type="submit" name="register" value="Register"></p>
	</form>
</body>
</html>