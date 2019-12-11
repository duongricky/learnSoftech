<!DOCTYPE html>
<html>
<head>
	<title>Example 1 - Session 4</title>
	<style type="text/css">
		span{
			color: red;
		}
	</style>
</head>
<body>
<?php
	$id = $_GET['id'];
	include 'connectdb.php';
	$sql = "SELECT * FROM users WHERE id = $id";
	$editUser = $conn->query($sql);
	while($row = $editUser->fetch_assoc()) {
		$name     = $row['name'];
		$email    = $row['email'];
		$username = $row['username'];
		$phone    = $row['phone'];
    }
	$errName = $errEmail = $errUsername = $errPhone = "";
	$check = true;
	if(isset($_POST['edit'])){
		//var_dump($_FILES);
		//echo "ban dan dang ky";
		$name        = $_POST['name'];
		$email       = $_POST['email'];
		$username    = $_POST['username'];
		$phone       = $_POST['phone'];
		if($name == ""){
			$errName = "vui long dien ten vao";
			$check = false;
		}
		if($email == ""){
			$errEmail = "vui long dien email vao";
			$check = false;
		}
		if($username == ""){
			$errGender = "vui long chon username vao";
			$check = false;
		}
		if($phone == ""){
			$errGender = "vui long chon phone vao";
			$check = false;
		}
		//in du lieu ra
		if($check){
			$sql = "UPDATE users SET name = '$name', username = '$username',
			email = '$email', phone = '$phone' WHERE id = $id";
			$conn->query($sql);
			//tro ve trang list user
			header("Location: list_user.php");
		}
		
	}
	?>
	<h1>Edit user</h1>
	<form action="edit_user.php?id=<?php echo $id?>" name = "edit" method="post" enctype="multipart/form-data">
		<p>Name:<input type="text" name="name" value="<?php echo $name;?>">
		<span><?php echo $errName;?></span>
		</p>
		<p>Email:<input type="email" name="email" value="<?php echo $email;?>">
		<span><?php echo $errEmail;?></span>
		</p>
		<p>Username:<input type="text" name="username" value="<?php echo $username;?>">
		<span><?php echo $errUsername;?></span>
		</p>
		<p>Phone:<input type="text" name="phone" value="<?php echo $phone;?>">
		<span><?php echo $errPhone;?></span>
		</p>
		<p><input type="submit" name="edit" value="Edit"></p>
	</form>
</body>
</html>