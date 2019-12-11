<?
  if ($reGetOne->num_rows) {
    $infoCate = mysqli_fetch_assoc($reGetOne);
    $category_name = $infoCate['name'];
  }
?>
<div class="row">
  <div class="col-md-12">
    <h3>Edit Category Id = <?php echo $id_Cate?></h3>
  </div>
</div>
<div class="form" id="form_edit_cate">
  <form method="post" action="index.php?action=edit_category&id=<?php echo $id_Cate?>" name="edit_category">
  <div class="form-group">
    <label for="email">Category Name:</label>
    <input type="text" class="form-control" name="category_name" value="<?php echo $category_name;?>">
  </div>
  <button type="submit" class="btn btn-primary" name="edit_category">Edit Category</button>
</form>
</div>