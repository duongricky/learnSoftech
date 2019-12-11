<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Demo 1</title>
</head>
<body>
	<?php
		include '';
		$name = $_GET['name'];
		$email = $_GET['email']; 
		echo $name . " " . $email;	
	?>
	<h1>Form DK</h1>
	<form action="<?php echo $_SERVER['PHP_SELF'];?>" name="DK" method="GET">
		<p>Name:<input type="text" name="name"></p>
		<p>Email:<input type="email" name="email"></p>
		<input type="submit" name="DK" value="Add">	
	</form>
</body>
</html>