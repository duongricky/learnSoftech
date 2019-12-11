<h1>Edit user</h1>
<form action ="index.php?action=edit&id=<?php echo $idEdit?>" method="post">
	<p>Name: <input type="text" name ="name" value="<?php echo $userEdit['name']?>"></p>
	<input type="submit" name="Edit">
</form>