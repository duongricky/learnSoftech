<!DOCTYPE html>
<html>
<head>
	<title>Example 3 - Session 1 PHP</title>
	<style type="text/css">
		.product{
			border: 2px solid green;
			width: 220px;
			float: left;
		}
	</style>
</head>
<body>
	<?php for($i = 0; $i < 9; $i++){?>
		<div class="product">
			<img src="avatar.jpg" width="200" height="200">
			<a href="example<?php echo $i;?>.php">Chi tiet</a>
		</div>
	<?php}
	?>
</body>
</html>