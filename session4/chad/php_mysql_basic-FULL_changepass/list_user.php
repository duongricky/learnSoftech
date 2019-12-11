<style type="text/css">
	table, tr, th, td{
		border-collapse: collapse;
		border: 1px dotted gray;
	}
	img{
		width: 100px;
		height: 100px;
	}
</style>
<?php 
//var_dump($conn);
include 'connectdb.php';
// echo "<br/>";
// var_dump($conn);
// exit();
$sql  = "SELECT * FROM user";
$listUsers = $conn->query($sql);
?>
<table>
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Username</th>
	<th>Email</th>
	<th>Avatar</th>
	<th>Action</th>
</tr>
<?php
if($listUsers->num_rows > 0){
	//xuat list user ra
	while($row = $listUsers->fetch_assoc()) {
		$id = $row['id'];
		$avatar = 'uploads/'.$row["avatar"];
		echo "<tr>";
		echo "<td>".$row["id"]."</td>";
		echo "<td>".$row["name"]."</td>";
		echo "<td>".$row["username"]."</td>";
		echo "<td>".$row["email"]."</td>";
		echo "<td>"."<img src='$avatar'>"."</td>";
		echo "<td>"."<a href='edit_user.php?id=$id'>Edit</a>";
		echo "| <a href='delete_user.php?id=$id'>Delete</a>"."";
		echo "| <a href='change_pass.php?id=$id'>Change pass</a>"."</td>";
		echo "</tr>";
    }
}else{
	echo "<tr><td colspan = '3'>Khong co user nao</td></tr>";
}
//var_dump($listUsers);
?>
</table>