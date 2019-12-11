
<?php include 'config/connectdb.php';?>
<?php include 'functions/function.php';?>
<?php include 'common/header.php';
// neu chua login thi bat tro ve trang login
if(!isset($_SESSION['login'])){
    redirectPage('login.php');
}
?>
<body>

<?php $listUsers = listUser($conn);?>
    <div id="wrapper">

<?php include 'common/navigation.php';?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">List users</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            List users
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Avatar</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php while($row = $listUsers->fetch_assoc()) {
                                            $id = $row['id'];
                                        ?>
                                        <tr>
                                            <td><?php echo $row['id'];?></td>
                                            <td><?php echo $row['name'];?></td>
                                            <td><?php echo $row['username'];?></td>
                                            <td><?php echo $row['email'];?></td>
                                            <td><img src="uploads/<?php echo $row['avatar'];?>" height="100"></td>
                                            <td>
                                            <a href="edit_user.php?id=<?php echo $id;?>"><button type="button" class="btn btn-primary">Edit</button></a>
                                            <a href="#" id="<?php echo $id?>"><button type="button" class="btn btn-danger">Delete</button></a></td>
                                        </tr>
                                       <?php }?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
<?php include 'common/footer.php';?>
   