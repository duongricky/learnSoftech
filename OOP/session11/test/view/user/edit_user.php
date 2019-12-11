<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<form method="post" action="index.php?action=edit_user&id=<?php echo $idEdit?>">
		<input type="text" name="name" value="<?php echo $name?>">
		<button type="submit" name="edit">Edit</button>
	</form>
</body>
</html>