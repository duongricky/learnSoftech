
<?php include 'config/connectdb.php';?>
<?php include 'functions/function.php';?>
<?php include 'common/header.php';?>
<body>
<?php 
if(isset($_POST['login'])){
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";	
	$checkLogin = $conn->query($sql);
	if($checkLogin->num_rows){
		echo "login thanh cong";
		$_SESSION['login'] = true;
		$_SESSION['username'] = $username;
		redirectPage('list_user.php');

	}else{
		echo "sai username hoac password";
	}
}
?>
    <div id="wrapper">

 <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="<?php echo $_SERVER['PHP_SELF']?>" method ="post" >
                            <fieldset>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" name = "username"  class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" name = "password"  class="form-control">
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" class="btn btn-primary" name="login">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
            <!-- /.row -->
        <!-- /#page-wrapper -->
<?php include 'common/footer.php';?>
   