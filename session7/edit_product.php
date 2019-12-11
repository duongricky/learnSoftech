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
        $id_Product      = $_GET['id'];
        $resultList_Edit = ListProduct_Edit($conn,$id_Product);
        if($resultList_Edit->num_rows > 0) {
            $row_product = $resultList_Edit->fetch_assoc();
        }
        $product_name    = $row_product['product_name'];
        $product_info    = $row_product['product_info'];
        $product_price   = $row_product['product_price'];
        $product_picture = $row_product['product_picture'];
        if (isset($_POST['edit_products'])) {
            $product_name    = $_POST['product_name'];
            $product_info    = $_POST['product_info'];
            $product_price   = $_POST['product_price'];
            $product_picture = $_FILES['product_picture'];
            UpdateEditProduct($id_Product,$conn,$product_name,$product_info,$product_price,$product_picture);
        }
    ?>
    <?php include 'common/navigation.php';?>    
    <div id="wrapper">        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Products</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form edit Products
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <form role="form" action="edit_product.php?id=<?php echo $id_Product?>" method="post" enctype="multipart/form-data">
                                    <div class="col-lg-4 col-lg-offset-4">
                                        <div class="form-group">
                                            <label>Product Name</label>
                                            <p class="errorFormAll"><?php echo $errProductName?></p>
                                            <input type="text" name="product_name" class="form-control" value="<?php echo $product_name?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Infomation</label>
                                            <p class="errorFormAll"><?php echo $errP_Des?></p>
                                            <input type="text" name="product_info" class="form-control" value="<?php echo $product_info?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Prices</label>
                                            <p class="errorFormAll"><?php echo $errP_Prices?></p>
                                            <input type="text" name="product_price" class="form-control" value="<?php echo $product_price?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Picture</label>
                                            <p class="errorFormAll"><?php echo $errP_Pic?></p>
                                            <img style="width: 100px;height: 100px" alt="" src="uploadProduct/<?php echo $product_picture?>">
                                            <input type="file" name="product_picture" value="<?php echo $product_name?>">
                                        </div>
                                        <div class="text-center">
                                             <button type="submit" name="edit_products" class="btn btn-primary">Edit Products</button>
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
   