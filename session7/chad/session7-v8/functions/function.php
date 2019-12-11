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
			VALUES ('$name', '$username', '$password', '$fileName', '$phone', '$email', '$description')");
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
?>