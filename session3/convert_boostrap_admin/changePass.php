<style type="text/css">
	span {
		color: red;
	}
</style>
<?php
	$getId      = $_GET['id'];
	include('connectdb.php');
	$errOldPass = $errNewPass = $errRenewPass = "";
	$validate   = true;
	if (isset($_POST['change_password'])) {
		$old_password    = $_POST['old_password'];
		$encode_password = md5($old_password);
		$new_password    = ($_POST['new_password']);
		$renew_password  = ($_POST['renew_password']);
		//query Old-Pass
		if(empty($old_password)) {
			$errOldPass = "Bạn chưa nhập password cũ";
			$validate   = false;
		}
		if(empty($new_password)) {
			$errNewPass = "Bạn chưa nhập mật khẩu mới";
			$validate   = false;
		}
		if(empty($renew_password)) {
			$errRenewPass = "Bạn chưa nhập lại mật khẩu mới";
			$validate   = false;
		}
		$queryOldPass = "SELECT password FROM user WHERE password = '$encode_password' AND id = '$getId'";
		$resultOldPass = $conn->query($queryOldPass);
		if($resultOldPass->num_rows) {
			if (md5($new_password) == md5($renew_password)) {
				//Put the password into the database
				$encode_renewPss = md5($renew_password);
				$sqlUpdatePass = "UPDATE user SET password = '$encode_renewPss' WHERE id = '$getId'";
				$conn->query($sqlUpdatePass);
				$conn->close();		}
			else {
				$errRenewPass = "Bạn nhập lại password mới không khớp";
				$validate = false;
			}
		}
		else {
			$errOldPass = "Bạn đã nhập sai password cũ";
			$validate   = false;
		}
		//Valide Oke>>>Submit
		if($validate) {
			$complete = "Bạn đã đổi password thành công";
		}
	}
?>
<form action="changePass.php?id=<?php echo $getId?>" name="change_password" method="post">
	<p>Old-Password: 
		<input type="password" name="old_password" value="<?php echo $old_password;?>">
		<span><?php echo $errOldPass;?></span>
	</p>
	<p>New-Password: 
		<input type="password" name="new_password" value="<?php echo $new_password;?>">
		<span><?php echo $errNewPass;?></span>
	</p>
	<p>ReNew-Password: 
		<input type="password" name="renew_password" value="<?php echo $renew_password;?>">
		<span><?php echo $errRenewPass;?></span>
	</p>
	<p>
		<input type="submit" name="change_password" value="ChangePass">
		<span><?php echo $complete;?></span></p>
</form>