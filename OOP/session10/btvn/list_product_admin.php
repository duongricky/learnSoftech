<?php include 'common/header.php';?>
<?php include 'config/connectdb.php';?>
<?php include 'functions/function_product.php';?>
<body>
    <div id="wrapper">
<?php include 'common/navigation.php';?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">List Product</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                    <p>Noi dung list Product</p>
                </div>
            </div>
            <!-- /.row -->
             <div class="panel-body">
                            <div class="table-responsive">
                                <table id="tb_listproduct" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr class="text-center">
                                            <th>ID</th>
                                            <th>Product Name</th>
                                            <th>Product Infomation</th>
                                            <th>Product Prices</th>
                                            <th>Product Picture</th>
                                            <th>Edit Product</th>
                                            <th>Delete Product</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $resultList = ListProduct($conn);
                                            if($resultList->num_rows > 0){
                                            while ($row = $resultList->fetch_assoc()) {
                                            $id_Product = $row['id'];
                                            $product_picture = 'uploadProduct/'.$row['product_picture'];
                                        ?> 
                                        <tr>
                                            <th><?php echo $row['id']?></th>
                                            <th><?php echo $row['product_name']?></th>
                                            <th><?php echo $row['product_info']?></th>
                                            <th><?php echo $row['product_price']?></th>
                                            <th><img class="img-responsive" src="<?php echo $product_picture?>" alt="#"></th>
                                            <th><a class="btn btn-success" href="edit_product.php?id=<?php echo $id_Product?>">Edit</a></th>
                                            <th><a href="delete_product.php?id=<?php echo $id_Product?>" class="btn btn-danger">Delete</a></th>
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
   