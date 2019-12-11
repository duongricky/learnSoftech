<div class="row">
	<div class="col-md-12">
		<h3>Products</h3>
	</div>
</div>
<!-- Add table in list user -->
<div class="table-responsive" id="table_product">
    <table class="table table-striped table-bordered table-hover">
    	<thead>
	        <tr>
		       	<th>ID</th>
	            <th>Product Name</th>
	            <th>Product Infomation</th>
	            <th>Category Id</th>
	            <th>Gaming Name</th>
	            <th>Product Prices</th>
	            <th>Product Picture</th>
	            <th>Edit Product</th>
	            <th>Delete Product</th>
	       	</tr>
	    </thead>
	    <tbody>
	        <?php
	        //var_dump($resultProducts);exit();
	        if(mysqli_num_rows($resultProducts)){
	        	//var_dump(mysqli_fetch_assoc($resultProducts)); exit();
	            while ($infoProduct = mysqli_fetch_assoc($resultProducts)) {
	              $id_Products = $infoProduct['id'];
	              $avatar  = 'uploadPicProducts/' . $infoProduct['product_picture'];
	        ?>
	        <tr>                            
	            <td><?php echo $infoProduct['id']?></td>                
	            <td><?php echo $infoProduct['product_name']?></td>
	            <td><?php echo $infoProduct['product_info']?></td>
	            <td><?php echo $infoProduct['category_id']?></td>
	            <td><?php echo $infoProduct['category_name']?></td>
	            <td><?php echo $infoProduct['product_price']?></td>
	            <td><img class="img-responsive" src="<?php echo $avatar?>" alt=""></td>
	            <td>
	            	<a class="btn btn-success" href="index.php?action=edit_products&id=<?php echo $id_Products?>">Edit</a>
	            </td>
	           	<td>
	           		<a onclick="delete_id(<?php echo $id_Products?>,'products','index.php?action=list_products')" href="#" class="btn btn-danger">Delete</a>
	           	</td>
	        </tr>
	        <?php
	            }
	        }
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
<div class="row">
	<div class="col-md-12">
		<div class="list-page float-right">
		<ul>
			<li><a href="#">Trang</a></li>
			<?php
			for ($i = 1; $i<=ceil($resultTotal/3); $i++){ 
			?>
				<li><a href="index.php?action=list_products&page=<?php echo $i?>"><?php echo $i?></a></li>
			<?php
			} //end floop For
			?>
		</ul>	
	</div>
	</div>
</div>
			