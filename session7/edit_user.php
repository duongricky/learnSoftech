<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php include 'functions/functions_edit_delete.php';?>
<?php
    // if (!isset($_SESSION['login'])) {
    //     redirectPage('login.php');
    // }
?>
<?php
    //Get user id:
    $id_User = $_GET['id'];
?>
<body>
    <?php
        $resultList_Edit = ListUser_Edit($conn,$id_User);
        if($resultList_Edit->num_rows > 0) {
            
            $info     = $resultList_Edit->fetch_assoc();
        } 
        $name     = $info['name'];
        $username = $info['username'];
        $email    = $info['email'];
        $phone    = $info['phone'];
        $avatar   = $info['avatar'];
        //var_dump($avatar); exit();
        if(isset($_POST['edit_user'])) {
            $EmailCheck = "";
            $errName   = checkEmpty($_POST['name'],"tên");
            $errUser   = checkEmpty($_POST['username'],"tên người dùng");
            $errEmail  = checkEmail($conn,$_POST['email'],$EmailCheck, $email);
            $name      = $_POST['name'];
            $username  = $_POST['username'];
            $email     = $_POST['email'];
            $phone     = $_POST['phone'];
            $avatar    = $_FILES['avatar'];
            UpdateEdit($id_User,$conn,$name,$username,$email,$phone);
        }
    ?>
    <div id="wrapper">
<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Users</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="panel panel-default">
                        <div class="panel-heading">
                            Form Edit User
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <form id="FormEdit" role="form" action="edit_user.php?id=<?php echo $id_User?>"
                                    method="post" enctype="multipart/form-data">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name="name" class="form-control" value="<?php echo $name?>">
                                            <p class="errorFormAll"><?php echo $errName?></p>
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" name="username" class="form-control" value="<?php echo $username?>">
                                            <p class="errorFormAll"><?php echo $errUser?></p>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3"></textarea>
                                            <p class="errorFormAll"><?php echo $errDescription?></p>
                                        </div>
                                        <button type="submit" name="edit_user" class="btn btn-primary">Submit</button>
                                        <span class="complete_add"><?php echo $complete?></span>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" name="email" class="form-control" value="<?php echo $email?>">
                                            <p class="errorFormAll"><?php echo $errEmail?></p>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" name="phone" class="form-control" value="<?php echo $phone?>">
                                            <p class="errorFormAll"><?php echo $errPhone?></p>
                                        </div>
                                        <div class="form-group">
                                            <label>Avatar</label>
                                            <p>
                                                <img src="uploads/<?php echo $avatar?>" alt="#">
                                            <input style="display: inline;" type="file" name="avatar">
                                            </p>
                                            <p class="errorFormAll"><?php echo $errAvatar;?></p>
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
        </div>
<?php include 'common/footer.php';?>