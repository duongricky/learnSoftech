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
	$errName = $errEmail = "";
	$name = $email = "";
	$check = true;
	if(isset($_POST['register'])){
		//echo "ban dan dang ky";
		$name = $_POST['name'];
		$email = $_POST['email'];
		if($name == ""){
			$errName = "vui long dien ten vao";
			$check = false;
		}
		if($email == ""){
			$errEmail = "vui long dien email vao";
			$check = false;
		}
		//in du lieu ra
		if($check){
			echo $name;
			echo "<br>";
			echo $email;
		}
	}else{
		echo "ban chua nhan dang ky";
	}
	?>
	<h1>Form post</h1>
	<form action="<?php echo $_SERVER['PHP_SELF']?>" name = "register" method="post">
		<p>Name:<input type="text" name="name" value="<?php echo $name;?>">
		<span><?php echo $errName;?></span>
		</p>
		<p>Email:<input type="email" name="email" value="<?php echo $email;?>">
		<span><?php echo $errEmail;?></span>
		</p>
		<p><input type="submit" name="register" value="Register"></p>
	</form>
</body>
</html>