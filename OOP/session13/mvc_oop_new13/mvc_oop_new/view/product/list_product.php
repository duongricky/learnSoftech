<a href="index.php?action=add_product">ADD PRODUCT</a>
<a href="index.php?action=list">LIST USER</a>
<h1>LIST PRODUCT</h1>
<?php 
	while($row = $listProduct->fetch_assoc()) {
		$id = $row['id'];
		echo $row['id'].' - '.$row['name'].' - '.$row['price'].' - '.$row['category_name'];
		echo " <a href='index.php?action=edit_product&id=$id'>EDIT</a>";
		echo " | <a href='index.php?action=delete_product&id=$id'>DELETE</a>";
		echo "<br>";
	}
?>
<?php
 for ($i = 1; $i<=ceil($totalProduct/3); $i++){?>
<a href="index.php?action=list_product&page=<?php echo $i?>"><?php echo $i?></a>
<?php }?>