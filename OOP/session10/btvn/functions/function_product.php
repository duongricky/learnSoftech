<?php
//check empty feild
function checkEmpty($value,$nameCheck) {
	if(empty($value)) {
		$errCheck = "Vui lòng không để trống " . $nameCheck;
	}
	else {
		$errCheck = false;
	}
	return $errCheck;
}
function checkPicture($picture){
	if ($picture['error'] != 0) {
		return "Chưa chọn ảnh đại diện cho sản phẩm";
	}
	else return "";
}
function Insert_Product($conn,$product_name,$product_info,$product_price,$product_picture) {
	$path     = 'uploadProduct/';
	$fileNamePic = $product_picture['name'];
	$pathSave = $path.$fileNamePic;
	move_uploaded_file($product_picture['tmp_name'],$pathSave);
	$sqlInsert = "INSERT INTO products
	(product_name,product_info,product_price,product_picture)
	VALUES ('$product_name','$product_info','$product_price','$fileNamePic')";
	return $conn->query($sqlInsert);
	$conn->close();
}
function ListProduct($conn) {
	$sqlList = "SELECT * FROM products";
	return $conn->query($sqlList);
	$conn->close();
}
function ListProduct_Edit($conn,$id_Product) {
	return $conn->query("SELECT * FROM products WHERE id = $id_Product");
}
function UpdateEditProduct($id_Product,$conn,$product_name,$product_info,$product_price,$product_picture) {
		$sqlUpdate = "UPDATE products SET product_name = '$product_name',product_info = '$product_info',product_price = '$product_price' WHERE id = $id_Product";
		$completeUpdate = $conn->query($sqlUpdate);
		return $completeUpdate;
		$conn->close();
	}
function getProductCart($conn, $arrIdProduct){
     return $conn->query("SELECT * FROM products WHERE id IN $arrIdProduct");
}
function LoginUser($conn,$username,$password) {
	$sqlLogin = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
	return $conn->query($sqlLogin);
	$conn->close();
}
function checkEmptyLogin($value_input,$nameCheck) {
	if (empty($value_input)) {
		echo "<script language='javascript'>
				alert('Vui lòng nhập $nameCheck');
			  </script>";
		return true;
	}
	else return false;
}
function redirectPage($link){
	header("Location: ".$link);
}
//
?>