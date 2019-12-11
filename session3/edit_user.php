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
	$id_User  = $_GET['id'];//Get id in Database
	include('connectdb.php');//Connect Database
	$selectId = "SELECT * FROM user WHERE id = $id_User";
	$result   = $conn->query($selectId);//query data in database
	$row      = $result->fetch_assoc();
	$errName  = $errUser = $errEmail = 
	$errPhone = $errAvatar = "" ;
	$validate = true;
	$name     = $email = $username = $phone = $avatar = "";
	$email2   = $username2 = '';
	//kiểm tra các trường đã tồn tại có đúng định dạng hay k??
	if(isset($_POST['update'])){
		$name     = $_POST['name'];
		$email    = $_POST['email'];
		$username = $_POST['username'];
		$phone    = $_POST['phone'];
		if(empty($name)) {
			$errName  = "Bạn chưa nhập tên";
			$validate = false;
		}
		if(empty($username)) {
			$errUser  = "Bạn chưa nhập username";
			$validate = false;
		}
		if(empty($email)) {
			$errEmail = "Bạn chưa nhập email";
			$validate = false;
		}
		//Validate Email and User;
		$sqlValiEmail = "SELECT * FROM user WHERE email = '$email'";
		$countEmail   = $conn->query($sqlValiEmail);
		if ($countEmail->num_rows > 0 && $email != $row['email']) {
			$errEmail = "Email đã tồn tại";
			$validate = false;
		}
		$sqlValiUser = "SELECT * FROM user WHERE username = '$username'";
		$countUser   = $conn->query($sqlValiUser);
		if ($countUser->num_rows > 0 && $username != $row['username']) {
			$errUser  = "User đã tồn tại";
			$validate = false;
		}
		if(empty($phone)) {
			$errPhone = "Bạn chưa nhập Số điện thoại";
			$validate = false;
		}
		//$fileName = $avatar;
		if($_FILES['avatar']['error'] == 0){
		/* Neu chon avatar mới thì viết 
		các lệnh đưa avatar mới vào database */
			//duong dan luu file
			$path     = 'uploadfiles/';
			$avatar   = $_FILES['avatar'];
			$fileName = uniqid().$_FILES['avatar']['name'];
			$pathSave = $path.$fileName;
			move_uploaded_file($avatar['tmp_name'], $pathSave);
		}
		else {
			$fileName = $row['avatar'];//nếu k chọn thì trả về ảnh ban đầu
		}
		if($validate) {
			$sql_Update = "UPDATE user SET name = '$name',username = '$username',email = '$email',phone = '$phone', avatar = '$fileName' WHERE id = $id_User";
			$conn->query($sql_Update);
			//header("Location: list_user.php");
		}
	}
	$conn->close();
	header("Location:list_user.php");
?>
<!--Form Update-->
<form action="edit_user.php?id=<?php echo $id_User?>" name="update" method="post" enctype="multipart/form-data">
<p>Name: 
	<input type="text" name="name" value="<?php echo $row['name'];?>">
	<span><?php echo $errName;?></span>
</p>
<p>User: 
	<input type="text" name="username" value="<?php echo $row['username'];?>">
	<span><?php echo $errUser;?></span>
</p>
<p>Email: 
	<input type="text" name="email" value="<?php echo $row['email'];?>">
	<span><?php echo $errEmail;?></span>
</p>
<p>Phone: 
	<input type="text" name="phone" value="<?php echo $row['phone'];?>">
	<span><?php echo $errPhone;?></span>
</p>
<p>Avatar: <input type="file" name="avatar">
	<span><?php echo $errAvatar;?></span>
</p>
	<input type="submit" name="update" value="Edit Data">
</form>
</body>
</html>