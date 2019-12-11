<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php include 'functions/functions.php';?>
<?php
    if (!isset($_SESSION['login'])) {
        redirectPage('login.php');
    }
?>
<body>
    <div id="wrapper">
<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">List Users</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                    <p>Noi dung list users</p>
                </div>
            </div>
            <!-- /.row -->
             <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>UserName</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Avatar</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $resultList = ListUser($conn);
                                        if($resultList->num_rows > 0){
                                            while ($row = $resultList->fetch_assoc()) {
                                                $id_User = $row['id'];
                                                $avatar = 'uploads/'.$row['avatar'];
                                        ?> 
                                        <tr>
                                            <th><?php echo $row['id']?></th>
                                            <th><?php echo $row['name']?></th>
                                            <th><?php echo $row['username']?></th>
                                            <th><?php echo $row['email']?></th>
                                            <th><?php echo $row['phone']?></th>
                                            <th><img class="img-responsive" src="<?php echo $avatar?>" alt="#"></th>
                                            <th><a class="btn btn-success" href="edit_user.php?id=<?php echo $id_User?>">Edit</a></th>
                                            <th><a href="delete_user.php?id=<?php echo $id_User?>" class="btn btn-danger">Delete</a></th>
                                        </tr>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
        </div>
        <!-- /#page-wrapper -->
<?php include 'common/footer.php';?>
   