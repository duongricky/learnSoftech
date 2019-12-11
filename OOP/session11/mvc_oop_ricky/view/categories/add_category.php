<div class="row">
  <div class="col-md-12">
    <h3>Add Category</h3>
  </div>
</div>
<div class="form" id="form_edit_cate">
  <form method="post" action="index.php?action=add_category" name="add_category">
  <div class="form-group">
    <label for="email">Category Name:</label>
    <input type="text" class="form-control" name="category_name" value="<?php echo $category_name;?>">
  </div>
  <button type="submit" class="btn btn-primary" name="add_category">Add Category</button>
</form>
</div>