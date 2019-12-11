<div class="row">
	<div class="col-md-12">
		<h3>List Category</h3>
	</div>
</div>
<div id="table_category">
    <table class="table table-striped table-bordered table-hover">
    	<thead>
	        <tr>
		       	<th>ID</th>
	          <th>Category Name</th>
	          <th>Edit Category</th>
	          <th>Delete Category</th>    	
	        </tr>
	    </thead>
	    <tbody>
	        <?php
	        //var_dump($resultProducts);exit();
	        if(mysqli_num_rows($resultListCate)){
	        	//var_dump(mysqli_fetch_assoc($resultProducts)); exit();
	          while ($infoCate = mysqli_fetch_assoc($resultListCate)) {
	            $id_Cate = $infoCate['category_id'];
	        ?>
	        <tr>                            
	            <td><?php echo $id_Cate?></td>     
	            <td><?php echo $infoCate['name']?></td>
	            <td><a class="btn btn-success" href="index.php?action=edit_category&id=<?php echo $id_Cate?>">Edit</a></td>
	            <td><a class="btn btn-danger" href="index.php?action=delete_category&id=<?php echo $id_Cate?>">Delete</a></td>
	        </tr>
	        <?php
	            }
	        }
	       	else {//Không có dữ liệu
	       	?>
	       		<tr>
	       			<th colspan="2">No data</th>
	       		</tr>
			<?php
	       		}
	       	?>
	    </tbody>
	</table>
</div>
index.php?action=delete_category&id=<?php echo $id_Cate?>
index.php?action=delete_products&id=<?php echo $id_Products?>