<div class="row">
  <div class="col-md-12">
    <h3>Add New Products</h3>
  </div>
</div>
<div class="row" id="form_style">
  <form role="form" id="form_edit_product" action="index.php?action=add_products" method="post" enctype="multipart/form-data">
    <div class="col-lg-12">
      <div class="form-group">
          <label>Product Name</label>
          <span class="errorFormAll"><?php echo $errProductName?></span>
          <input type="text" name="product_name" class="form-control" value="<?php echo $product_name?>">
      </div>
      <div class="form-group">
          <label>Product Infomation</label>
          <span class="errorFormAll"><?php echo $errP_Des?></span>
          <input type="text" name="product_info" class="form-control" value="<?php echo $product_info?>">
      </div>
     	<div class="form-group">
         	<label>Product Prices</label>
         	<span class="errorFormAll"><?php echo $errP_Prices?></span>
         	<input type="text" name="product_price" class="form-control" value="<?php echo $product_price?>">
     	</div>
      <div class="form-group">
          <label>Product Discount</label>
          <span class="errorFormAll"><?php echo $errP_Discount?></span>
          <input type="text" name="product_discount" class="form-control" value="<?php echo $product_discount?>">
      </div>  
      <div class="form-group" id="select-category">
        <label for="sel1">Choose Category Gaming</label>
        <select class="form-control" id="sel1" name="product_category">
          <?php
          if(mysqli_num_rows($resultGetAll)){
            while ($infoCate = mysqli_fetch_assoc($resultGetAll)) {
          ?>
          <option value="<?php echo $infoCate['category_id']?>"><?php echo $infoCate['name']?>
          </option>
          <?
            }//end floop while
          }//end If
          ?>
        </select>
      </div>
      <div class="form-group">
          <input type="file" name="product_picture">
      </div>
      <div class="text-center">
        <button type="submit" name="add_products" class="btn btn-primary">Add Products</button>
      </div>
        <span class="complete_add"><?php echo $complete?></span>
      </div>
  </form>
</div>