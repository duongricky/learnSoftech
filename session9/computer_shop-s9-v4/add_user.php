
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
//setcookie('name', $_POST['name'], time() - 200, "/");
if(isset($_POST['register'])){
    setcookie('name', $_POST['name'], time() + 200, "/");
    $errName     = checkEmpty($_POST['name'], 'name');
    $errUsername = checkEmpty($_POST['username'], 'username');
    $errEmail    = checkEmpty($_POST['email'], 'email');
    $errPhone    = checkEmpty($_POST['phone'], 'phone');
    $errPass     = checkEmpty($_POST['password'], 'password');
    if(!$errName && !$errUsername && !$errEmail && !$errPhone && !$errPass){
        $name        = $_POST['name'];
        $username    = $_POST['username'];
        $email       = $_POST['email'];
        $password    = md5($_POST['password']);
        $phone       = $_POST['phone'];
        $description = $_POST['description'];
        //function upload avatar
        $avatar = uploadImage($_FILES['avatar']);
        $avatar = $avatar?$avatar:"default.jpg";
        //var_dump($avatar);exit();
        insertData($conn, $name, $username, $password, $email, $phone, $description, $avatar);
        redirectPage('list_user.php');
    }
}
$nameCookie = isset($_COOKIE['name'])?$_COOKIE['name']:"";
?>
    <div id="wrapper">

<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add users</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form add user
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <form role="form" action="<?php echo $_SERVER['PHP_SELF']?>" method ="post" enctype="multipart/form-data">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name = "name" class="form-control" value="<?php echo $nameCookie;?>">
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
                                        <button type="submit" class="btn btn-primary" name="register">Add user</button>
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
   