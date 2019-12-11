<link rel="stylesheet" type="text/css" href="public/css/style.css">
<a href="index.php?action=add">ADD USER</a>
<a href="index.php?action=list_product">LIST PRODUCT</a>
<h1>LIST USER</h1>
<?php 
while($row = $listUser->fetch_assoc()) {
	$id = $row['id'];
	echo $row['id'].' - '.$row['name'];
	echo " <a href='index.php?action=edit&id=$id'>EDIT</a>";
	echo " | <a href='index.php?action=delete&id=$id'>DELETE</a>";
	echo "<br>";

}
?>