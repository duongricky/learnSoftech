<?php
	if ($listUser->num_rows) {
		while($row = $listUser->fetch_assoc()) {
			$id = $row['id'];
			echo $row['id'].' - '.$row['name'];
			echo " <a href='index.php?action=edit_user&id=$id'>Edit</a>";
			echo " <a href='index.php?action=delete_user&id=$id'>Delete</a>" . "<br>";
		}
	}
	echo " <a href='index.php?action=add_user'>Add_New_User</a>" . "<br>";
?>