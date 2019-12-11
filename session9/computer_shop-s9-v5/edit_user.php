
<?php include 'config/connectdb.php';?>
<?php include 'functions/function.php';?>
<?php include 'common/header.php';
// neu chua login thi bat tro ve trang login
if(!isset($_SESSION['login'])){
    redirectPage('login.php');
}
?>
<body>
<?php 
$errName = $errUsername = $errEmail = $errPhone = $errPass = "";
$name = $email = $username = $email = $password = $phone = "";
$id = $_GET['id'];
$userInfo = getInfo($conn, $id);
$info = $userInfo->fetch_assoc();
$id          = $info['id'];
$name        = $info['name'];
$username    = $info['username'];
$email       = $info['email'];
$phone       = $info['phone'];
$description = $info['description'];
if(isset($_POST['edit'])){
    //ham edit du lieu
    //lay cac thong so da post len
    editInfo($conn, $name, $username, $password, $email, $phone, $description, $avatar);
    redirectPage('list_user.php');

}

?>
    <div id="wrapper">

<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit users</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form edit user
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <form role="form" action="edit_user.php?id=<?php echo $id?>" method ="post" enctype="multipart/form-data">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name = "name" class="form-control">
                                            <span class="has-error"><?php echo $errName;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" name = "username"  class="form-control">
                                            <span class="has-error"><?php echo $errUsername;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name = "password"  class="form-control">
                                            <span class="has-error"><?php echo $errPass;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea name = "description"  class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary" name="edit">Edit user</button>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name = "email"  class="form-control">
                                            <span class="has-error"><?php echo $errEmail;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" name = "phone"  class="form-control">
                                            <span class="has-error"><?php echo $errPhone;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Avatar</label>
                                            <input type="file"  name = "avatar">
                                        </div>
                                    </div>
                                </form>
                                <!-- /.col-lg-6 (nested) -->
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
<?php include 'common/footer.php';?>
   