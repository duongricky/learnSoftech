<?php 
	$id = $_GET['id'];
	include 'connectdb.php';
	if(isset($_POST['change_pass'])){
		//echo "DA nhan doi pass";
		$old_password = $_POST['old_password'];
		$_encode_old_pass = md5($old_password);
		$sqlGetOldPass = "SELECT password FROM user WHERE password = '$_encode_old_pass' AND id = $id";
		$resultGetOldPass = $conn->query($sqlGetOldPass);
		if($resultGetOldPass->num_rows){
			echo "Pass cu dung";
			//tiep tuc kiem tra new pass va renew pass co khop k?
			//neu khop thi viet cau lenh UPDATE sql tai id = $id de change pass (nho la ma hoa new password[)
			//ex: $newpassword = md5($_POST['new_password']);
			//ex: "UPDATE users SET password = '$newpassword' WHERE id = $id";
			//header ve lai list_user.php
		}else{
			echo "ban nhap sai pass cu";
		}
		//var_dump($sqlGetOldPass);exit();
	}
?>
<h1>Change password</h1>
<form action="change_pass.php?id=<?php echo $id?>" name = "change_pass" method="post">
<p>Old password: <input type="password" name="old_password"></p>
<p>New password: <input type="password" name="new_password"></p>
<p>Re-new password: <input type="password" name="re_new_password"></p>
<p><input type="submit" name="change_pass" value="Change password"></p>
</form>