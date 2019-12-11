<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php include 'functions/functions.php';
    if (!isset($_SESSION['login'])) {
        redirectPage('login.php');
    }
?>
<body>
<?php
    if (isset($_POST['register'])) {
        $errName   = checkEmpty($_POST['name'],"tên");
        $errUser   = checkEmpty($_POST['username'],"tên người dùng");
        $errAvatar = checkAvatar($_FILES['avatar'],$nameCheck);
        $errPass   = checkPass($_POST['password'],$nameCheck);
        $errEmail  = checkEmail($_POST['email'],$nameCheck);
        $errPhone  = checkPhone($_POST['phone'],$nameCheck);
        if(!$errName && !$errUser && !$errPass && !$errEmail && !$errPhone) {
            $complete    = "Đăng ký thành công";
            $name        = $_POST['name'];
            $username    = $_POST['username'];
            $password    = $_POST['password'];
            $email       = $_POST['email'];
            $phone       = $_POST['phone'];
            $description = $_POST['description'];
            $avatar      = $_FILES['avatar'];
            //add data to the database
            InsertData($conn,$name,$username,$password,$email,$phone,$avatar);
        }
    }
?>
    <div id="wrapper">
<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Users</h1>
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
                                <form role="form" action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <p class="errorFormAll"><?php echo $errName?></p>
                                            <input type="text" name="name" class="form-control" value="<?php echo $name;?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <p class="errorFormAll"><?php echo $errUser?></p>
                                            <input type="text" name="username" class="form-control" value="<?php echo $username;?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <p class="errorFormAll"><?php echo $errPass?></p>
                                            <input type="password" name="password" class="form-control" value="<?php echo $phone;?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <p class="errorFormAll"><?php echo $errDescription?></p>
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" name="register" class="btn btn-primary">Submit</button>
                                        <span class="complete_add"><?php echo $complete?></span>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <p class="errorFormAll"><?php echo $errEmail?></p>
                                            <input type="text" name="email" class="form-control" value="<?php echo $email;?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <p class="errorFormAll"><?php echo $errPhone?></p>
                                            <input type="text" name="phone" class="form-control" value="<?php echo $phone;?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Avatar</label>
                                            <p class="errorFormAll"><?php echo $errAvatar;?></p>
                                            <input type="file" name="avatar">
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
   