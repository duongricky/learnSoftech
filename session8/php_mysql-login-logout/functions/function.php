<?php 
function checkEmpty($value, $name){
    if($value == ""){
        $message = "Vui long dien ".$name." vao";
    }else{
        $message = false;
    }
    return $message;
}
function insertData($conn, $name, $username, $password, $email, $phone, $description, $avatar){
	return $conn->query("INSERT INTO users (name, username, password, avatar, phone, email, description)
			VALUES ('$name', '$username', '$password', '$avatar', '$phone', '$email', '$description')");
}
function listUser($conn){
	return $conn->query("SELECT * FROM users");
}
function deleteUser($id){
	// ham xoa user
}
//header("Location: list_user.php");
function redirectPage($link){
	header("Location: ".$link);
}
function uploadImage($file){
    if($file['error'] == 0){
        $path = "uploads/";
        $imageName = uniqid().$file['name'];
        move_uploaded_file($file['tmp_name'], $path.$imageName);
        return $imageName;
    }else{
       return false;
    }
}
function getInfo($conn, $id){
    return $conn->query("SELECT * FROM users WHERE id = $id");
}
?>