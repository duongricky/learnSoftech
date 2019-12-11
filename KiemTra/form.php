<?php include'functions.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Demo 1</title>
	<style type="text/css">
		span {
			color: red;
		}
	</style>
</head>
<body>
	<?php
		
		$conErrName = $conErrEm = $conErrPass = "";
		if (isset($_POST['register'])) {
			$errorName = checkName($_POST['name']);
			$errorEmail = checkEmail($_POST['email'],$conErrEm);
			$errorPass = checkPass($_POST['password'],$conErrPass);
			if (!$errorName && !$errorEmail && !$errorPass) {
				$name     = $_POST['name'];
				$email    = $_POST['email'];
				$password = md5($_POST['password']);
			}
		}
	?>
	<h1>Form DK</h1>
	<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>" name="DK">
		<p>Name:<input type="text" name="name" >
			<span><?php echo $errorName?></span>
		</p>
		<p>Email:<input type="email" name="email">
			<span><?php echo $errorEmail?></span>
		</p>
		<p>Password:<input type="password" name="password">
			<span><?php echo $errorPass?></span>
		</p>
		<input type="submit" name="register" value="Submit">
	</form>
</body>
</html>