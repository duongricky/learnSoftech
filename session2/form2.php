<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Form 2 PHP</title>
</head>
<body>
	<form action="<?php echo $_SERVER['PHP_SELF'];?>">
			<p>Name:<input type="text" name="name"></p>
			<p>Email:<input type="email" name="email"></p>
			<p>City:
				<select>
					<option>Quảng Nam</option>
					<option>Đà Nẵng</option>
					<option>Hà Nội</option>
				</select>
			</p>
			<p>
				Nam <input type="radio" name="gender" value="nam">
				Nu <input type="radio" name="gender" value="nu">
			</p>
	</form>
</body>
</html>