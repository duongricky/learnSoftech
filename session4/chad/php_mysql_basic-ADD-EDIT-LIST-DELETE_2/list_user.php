<style type="text/css">
	table, tr, th, td{
		border-collapse: collapse;
		border: 1px dotted gray;
	}
</style>
<?php 
include 'connectdb.php';
$sql  = "SELECT * FROM users";
$listUsers = $conn->query($sql);
?>
<table>
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Username</th>
	<th>Email</th>
	<th>Action</th>
</tr>
<?php
if($listUsers->num_rows > 0){
	//xuat list user ra
	while($row = $listUsers->fetch_assoc()) {
		$id = $row['id'];
		echo "<tr>";
		echo "<td>".$row["id"]."</td>";
		echo "<td>".$row["name"]."</td>";
		echo "<td>".$row["username"]."</td>";
		echo "<td>".$row["email"]."</td>";
		echo "<td>"."<a href='edit_user.php?id=$id'>Edit</a>"."</td>";
		echo "<td>"."<a href='delete_user.php?id=$id'>Delete</a>"."</td>";
		echo "</tr>";
    }
}else{
	echo "<tr><td colspan = '3'>Khong co user nao</td></tr>";
}
//var_dump($listUsers);
?>
</table>