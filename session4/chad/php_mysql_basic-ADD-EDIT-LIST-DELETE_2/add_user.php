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
	include 'connectdb.php';
	//var_dump($_POST);
	$errName = $errEmail = $errCity = $errGender = $errUsername = 
	$errPassword = $errPhone = $errAvatar = "";
	$name = $email = $city = $gender = "";
	$check = true;
	$arrCity = array(1 => "Da Nang", 2 => "Ha Noi", 3 => "Ho Chi Minh");
	$arrGender = array('male' => "Male", 'female' => "Female");

	if(isset($_POST['register'])){
		//var_dump($_FILES);
		//echo "ban dan dang ky";
		$name        = $_POST['name'];
		$email       = $_POST['email'];
		$username    = $_POST['username'];
		$password    = md5($_POST['password']);
		$phone       = $_POST['phone'];
		$city        = $_POST['city'];
		$gender      = $_POST['gender'];
		$avatar      = $_FILES['avatar'];
		$description = $_POST['description'];
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
		if($username == ""){
			$errGender = "vui long chon username vao";
			$check = false;
		}
		if($password == ""){
			$errGender = "vui long chon password vao";
			$check = false;
		}
		if($phone == ""){
			$errGender = "vui long chon phone vao";
			$check = false;
		}
		if($_FILES['avatar']['error'] != 0){
			$errAvatar = "vui long chon avatar";
			$check = false;
		}else{
			//duong dan luu file
			$path = "uploads/";
			$fileName = uniqid().$avatar['name'];
			$pathSave = $path.$fileName;
			move_uploaded_file($avatar['tmp_name'], $pathSave);
		}
		//in du lieu ra
		if($check){
			$sql = "INSERT INTO users (name, username, password, avatar, phone, email, description)
			VALUES ('$name', '$username', '$password', '$fileName', '$phone', '$email', '$description')";

			$conn->query($sql);
			//tro ve trang list user
			header("Location: list_user.php");
		}
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
		<p>Username:<input type="text" name="username" value="<?php echo $username;?>">
		<span><?php echo $errUsername;?></span>
		</p>
		<p>Password:<input type="password" name="password" value="<?php echo $password;?>">
		<span><?php echo $errPassword;?></span>
		</p>
		<p>Phone:<input type="text" name="phone" value="<?php echo $phone;?>">
		<span><?php echo $errPhone;?></span>
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
		<p>Description:<textarea name="description" rows="5"></textarea></p>
		<p><input type="submit" name="register" value="Register"></p>
	</form>
</body>
</html>