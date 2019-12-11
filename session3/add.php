<?php 
if(isset($_POST['change_password'])){
	var_dump($_FILES);exit;
}
?>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post" enctype="multipart/form-data">
	<p>Old-Password: 
		<input type="file" name="old_password">

	</p>
	<p>
		<input type="submit" name="change_password" value="ChangePass"></p>
</form>