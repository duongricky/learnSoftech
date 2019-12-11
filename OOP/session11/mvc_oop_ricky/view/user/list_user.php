<div class="row">
	<div class="col-md-12">
		<h3>Users</h3>
	</div>
</div>
<!-- Add table in list user -->
<div class="table-responsive" id="table_user">
    <table class="table table-striped table-bordered table-hover">
    	<thead>
	        <tr>
	            <th>ID</th>
	            <th>Name</th>
	            <th>UserName</th>
	            <th>Email</th>
	            <th>Phone</th>
	            <th>Avatar</th>
	            <th>Edit</th>
	            <th>Delete</th>
	       	</tr>
	    </thead>
	    <tbody>
	        <?php
	        if(mysqli_num_rows($resultList) > 0){
	            	while ($infoUsers = mysqli_fetch_assoc($resultList)) {
	                $id_User = $infoUsers['id'];
	                $avatar  = 'uploadAvatar/' . $infoUsers['avatar'];
	        ?>
	        <tr>                            
	            <td><?php echo $infoUsers['id']?></td>                
	            <td><?php echo $infoUsers['name']?></td>                  
	            <td><?php echo $infoUsers['username']?></td>
	            <td><?php echo $infoUsers['email']?></td>
	            <td><?php echo $infoUsers['phone']?></td>
	            <td><img class="img-responsive" src="<?php echo $avatar?>" alt=""></td>
	            <td>
	            	<a class="btn btn-success" href="index.php?action=edit_user&id=<?php echo $id_User?>">Edit</a>
	            </td>
	           	<td>
	           		<a onclick="delete_id(<?php echo $id_User?>,'user','index.php')" href="#" class="btn btn-danger">Delete</a>
	           	</td>
	        </tr>
	        <?php
	          } //end Floop While
	        }//end If
	       	else {//Không có dữ liệu
	       	?>
	       		<tr>
	       			<th colspan="5">No data</th>
	       		</tr>
			<?php
	       		}
	       	?>
	    </tbody>
	</table>
</div> <!-- end-table -->