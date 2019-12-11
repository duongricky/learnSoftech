
<?php 
	if ($inAuser->num_rows) {
		while ($infoUsers = mysqli_fetch_assoc($inAuser)) {
      $name        = $infoUsers['name'];
      $username    = $infoUsers['username'];
      $email       = $infoUsers['email'];
      $phone       = $infoUsers['phone'];
      $description = $infoUsers['description'];
      $avatar      = 'uploadAvatar/' . $infoUsers['avatar'];
		}
	}
?>
<div class="row">
  <div class="col-md-12">
    <h3>Edit User <?php echo $idUser?></h3>
  </div>
</div>
<div class="row" id="form_edit_user">
   <div class="col-md-12">
      <form role="form" action="index.php?action=edit_user&id=<?php echo $idUser?>" method="post" enctype="multipart/form-data">
         <div class="col-lg-6">
            <div class="form-group">
              <label>Name</label>
              <span class="errorFormAll"><?php echo $errName?></span>
              <input type="text" name="name" class="form-control" value="<?php echo $name;?>">
            </div>
            <div class="form-group">
             	<label>Username</label>
                <span class="errorFormAll"><?php echo $errUser?></span>
                <input type="text" name="username" class="form-control" value="<?php echo $username;?>">
            </div>
              <div class="form-group">
                  <label>Description</label>
                  <span class="errorFormAll"><?php echo $errDescription?></span>
                  <textarea class="form-control" rows="3"><?php echo $description?></textarea>
              </div>
              <button type="submit" name="editUser" class="btn btn-primary">Edit User</button>
              <span class="complete_add"><?php echo $complete?></span>
         </div>
         <div class="col-lg-6">
            <div class="form-group">
               <label>Email</label>
               <span class="errorFormAll"><?php echo $errEmail?></span>
               <input type="text" name="email" class="form-control" value="<?php echo $email;?>">
            </div>
            <div class="form-group">
               <label>Phone</label>
               <span class="errorFormAll"><?php echo $errPhone?></span>
               <input type="text" name="phone" class="form-control" value="<?php echo $phone;?>">
            </div>
            <div class="form-group">
              <span class="old-img">Old Avatar: 
                <img src="<?php echo $avatar?>">
              </span>
              <span class="errorFormAll"><?php echo $errAvatar;?></span>
            </div>
            <div class="form-group">
              <span>Select New Image:</span>
              <input type="file" name="avatar">
            </div>
         </div>
       	</form>
     	</div>
</div>

