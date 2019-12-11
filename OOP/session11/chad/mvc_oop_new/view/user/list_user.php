<?php 
while($row = $listUser->fetch_assoc()) {
	$id = $row['id'];
	echo $row['id'].' - '.$row['name'];
	echo " <a href='index.php?action=edit&id=$id'>EDIT</a>";
	echo "<br>";

}
?>