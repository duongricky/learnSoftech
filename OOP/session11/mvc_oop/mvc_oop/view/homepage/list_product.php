<?php 
	foreach($listCategory as $category){
		$id = $category->id;
		$name = $category->name;
		echo "<a href='index.php?product_category_id=$id'>$name</a>";
		echo "<br>";
	}
?>
<?php 
	foreach($listProduct as $product){
		$id = $product->id;
		echo $product->id." ";
		echo $product->name." ";
		echo $product->description." ";
		echo $product->image." ";
		echo $product->is_hot." ";
		echo "<a href='index.php?id=$id&action=delete'>Delete</a>";
		echo "<br>";
	}
?>
<p></p>
<p></p>
<p></p>
<?php 
	foreach($listUser as $user){
		$id = $user->id;
		echo $user->id." ";
		echo $user->name." ";
		echo "<a href='index.php?id=$id&action=delete'>Delete</a>";
		echo "<br>";
	}
?>