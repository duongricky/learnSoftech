<?php include 'config/connectdb.php';?>
<?php include 'common/header.php';
?>
<?php include 'functions/functions.php';?>
<body>
<?php
	if(isset($_POST['login'])) {
		$username   = $_POST['username'];
		$password   = md5($_POST['password']);
		$checkLogin = Login($conn,$username,$password);
		if ($checkLogin->num_rows) {
			echo "Bạn đã nhập đúng";
			$_SESSION['login']    = true;
			$_SESSION['username'] = $username;
			redirectPage('list_user.php');
		}
		else {
			echo "<script language='javascript'>
					alert('Bạn đã nhập sai username hoặc pasword');
				</script>";
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
	                        <form role="form" method="post" action="<?php echo $_SERVER['PHP_SELF']?>">
	                            <fieldset>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Username" name="username" type="text">
	                                </div>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
	                                </div>
	                                <div class="checkbox">
	                                    <label>
	                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
	                                    </label>
	                                </div>
	                                <!-- Change this to a button or input when using this as a form -->
	                                <button style="width: 100%" type="submit" class="btn btn-primary" name="login">Login</button>
	                            </fieldset>
	                        </form>
	                    </div>
	                </div>
	            </div>
	        </div>
    </div>	
<?php include 'common/footer.php';?>