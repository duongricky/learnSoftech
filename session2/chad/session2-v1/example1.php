<!DOCTYPE html>
<html>
<head>
	<title>Example 1 - Session 2</title>
</head>
<body>
	<?php 
	//var_dump($_POST);
	if(isset($_POST['register'])){
		//echo "ban dan dang ky";
		$name = $_POST['name'];
		$email = $_POST['email'];
		if($name == ""){
			echo "<br/>vui long dien ten vao";
		}
		if($email == ""){
			echo "<br/>vui long dien email vao";
		}
		//var_dump($name);
		//var_dump($email);
	}else{
		echo "ban chua nhan dang ky";
	}
	?>
	<h1>Form post</h1>
	<form action="<?php echo $_SERVER['PHP_SELF']?>" name = "register" method="post">
		<p>Name:<input type="text" name="name"></p>
		<p>Email:<input type="email" name="email"></p>
		<p><input type="submit" name="register" value="Register"></p>
	</form>
</body>
</html>