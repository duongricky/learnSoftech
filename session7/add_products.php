<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php include 'functions/function_product.php';?>
<style type="text/css">
    .errorFormAll {
        color:red;
    }
</style>
<body>
    <?php
        if (isset($_POST['add_products'])) {
            $errProductName = checkEmpty($_POST['product_name'],"tên sản phẩm");
            $errP_Des       = checkEmpty($_POST['product_info'],"thông tin");
            $errP_Prices    = checkEmpty($_POST['product_price'],"thông tin");
            $errP_Pic       = checkPicture($_FILES['product_picture']);
            if (!$errProductName && !$errP_Des && !$errP_Prices && !$errP_Pic) {
                echo "<script language='javascript'>
                    alert('Đã thêm sản phẩm');
                </script>";
                $product_name    = $_POST['product_name'];
                $product_info    = $_POST['product_info'];
                $product_price   = $_POST['product_price'];
                $product_picture = $_FILES['product_picture'];
                Insert_Product($conn,$product_name,$product_info,$product_price,$product_picture);
            }
        }
    ?>
    <?php include 'common/navigation.php';?>
    <div id="wrapper">        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Products</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form add Products
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <form role="form" action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data">
                                    <div class="col-lg-4 col-lg-offset-4">
                                        <div class="form-group">
                                            <label>Product Name</label>
                                            <p class="errorFormAll"><?php echo $errProductName?></p>
                                            <input type="text" name="product_name" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Infomation</label>
                                            <p class="errorFormAll"><?php echo $errP_Des?></p>
                                            <input type="text" name="product_info" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Prices</label>
                                            <p class="errorFormAll"><?php echo $errP_Prices?></p>
                                            <input type="text" name="product_price" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Picture</label>
                                            <p class="errorFormAll"><?php echo $errP_Pic?></p>
                                            <input type="file" name="product_picture">
                                        </div>
                                        <div class="text-center">
                                             <button type="submit" name="add_products" class="btn btn-primary">Add Products</button>
                                        </div>
                                        <span class="complete_add"><?php echo $complete?></span>
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
   