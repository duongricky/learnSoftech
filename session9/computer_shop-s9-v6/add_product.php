
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
$errName = $errPrice = $errDiscount  = "";
$name = $price = $discount = $description = $created = $image = "";
//setcookie('name', $_POST['name'], time() - 200, "/");
if(isset($_POST['add'])){
    $errName     = checkEmpty($_POST['name'], 'name');
    $errPrice = checkEmpty($_POST['price'], 'price');
    $errDiscount    = checkEmpty($_POST['discount'], 'discount');
    if(!$errName && !$errPrice && !$errDiscount){
        $name        = $_POST['name'];
        $price    = $_POST['price'];
        $discount       = $_POST['discount'];
        $description       = $_POST['description'];
        //function upload image
        $image = uploadImage($_FILES['image']);
        $image = $image?$image:"default.jpg";
        $created = date('Y-m-d h:i:s');
        insertProduct($conn, $name, $price, $discount, $description, $image, $created);
        redirectPage('list_product.php');
    }
}
?>
    <div id="wrapper">

<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add product</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form add product
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <form role="form" action="<?php echo $_SERVER['PHP_SELF']?>" method ="post" enctype="multipart/form-data">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name = "name" class="form-control">
                                            <span class="has-error"><?php echo $errName;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" name = "price"  class="form-control">
                                            <span class="has-error"><?php echo $errPrice;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Discount</label>
                                            <input type="text" name = "discount"  class="form-control">
                                            <span class="has-error"><?php echo $errDiscount;?></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea name = "description"  class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary" name="add">Add product</button>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input type="file"  name = "image">
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
   