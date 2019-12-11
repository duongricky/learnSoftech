<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Connect Database</title>
	<style type="text/css">
		table,th,tr,td {
			border: 1px solid #d4c8c8;
			border-collapse: collapse;
			text-align: center;
		}
		.idStyle {
			padding: 0px 10px;
		}
		td {
			padding: 10px 0px;
		}
		p,h1 {
			display: none;
		}
		a {
			text-decoration: none;
			color: #0054ec;
		}
		a:hover {
			text-decoration: underline;
		}
		img {
			width: 60px;
			height: 50px;
		}
	</style>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th class="idStyle">Id</th>
				<th>Name</th>
				<th>User</th>
				<th>Password</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Avatar</th>
				<th>Edit</th>
				<th>Delete</th>
				<th>Change Password</th>
			</tr>
		</thead>
		<tbody>
			<?php
				//Select Data
				include('connectdb.php');
				$sqlSelect = "SELECT * FROM user ORDER BY id ASC";
				$result = $conn->query($sqlSelect);
				if($result->num_rows > 0){
					while ($row = $result->fetch_assoc()) {
						//var_dump($row);
						$id_User = $row['id'];
						$avatar = 'uploadfiles/'.$row['avatar'];
					?>	
					<tr>
						<td><?php echo $row['id'];?></td>
						<td><?php echo $row['name'];?></td>
						<td><?php echo $row['username'];?></td>
						<td><?php echo $row['password'];?></td>
						<td><?php echo $row['email'];?></td>
						<td><?php echo $row['phone'];?></td>
						<td><img src="<?php echo $avatar?>"></td>
						<td><a href="edit_user.php?id=<?php echo $id_User?>">Edit</a></td>
						<td><a href="deleteuser.php?id=<?php echo $id_User?>">Delete</a></td>
						<td><a href="changePass.php?id=<?php echo $id_User?>">Change Password</a></td>
					</tr>
			<?php
					}//Close while
				}//Close if
				else {
					echo "Table has data";
				}
				$conn->close();
			?>
		</tbody>
	</table>
</body>
</html>