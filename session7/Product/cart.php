<?php include '../config/connectdb.php';
      include '../functions/function_product.php';
?>
<!DOCTYPE html>
<html lang="en">
<?php include 'common_product/header_product.php';?>
<body>
  <div class="header">
    <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="title_header">
          <a class="navbar-brand" href="#">DN Store Gaming</a>
        </div>
      </div>
    </div>
    </nav>
  </div>
  <!-- end-Header -->
  <!-- Menu -->
  <div class="menu">
    <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
  
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="list_products_front.php">Home</a></li>
          <li><a href="#">Laptop</a></li>
          <li><a href="#">Desktop</a></li>
          <li><a href="#">Gaming Gear</a></li>
          <li><a href="#">Apple Store</a></li>
          <li><a href="#">Other</a></li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">
            <i class="fa fa-search"></i>
          </button>
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li class="linkCart"><a href="cart.php">
          Hi <?php echo $_SESSION['user_name']?></a></li>
          <li class="linkCart"><a href="#"> | </a></li>
          <li class="linkCart"><a href="logout_user.php">Logout</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
    </nav>
  </div>
<div class="show_cart">
  <div class="container">
    <div class="row">
      <div class="table-responsive">
        <table class="table">
          <caption align="top" id="title_table_cart" class="text-center">SHOPPING CART OF: <?php echo $_SESSION['username']?> </caption>
          <thead>
            <tr>
              <th>ID Product</th>
              <th>Picture</th>
              <th>Product</th>
              <th>Discount</th>
              <th>Price</th>
              <th>Quantity</th>
              <th></th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <?php
              $cart = $_SESSION['cart'];
                if(empty($cart)){
                  $ContentDelete = $ContentTotal = "";
              ?>
                <tr>
                  <th>None</th>
                  <th>None</th>
                  <th>None</th>
                  <th>None</th>
                  <th>None</th>
                  <th>None</th>
                </tr>
              <?php
              }
              else {
                $arrId = "(";
                $i = 1;
                foreach ($cart as $key => $value) {
                  $arrId.=$key;
                  if($i < count($cart)){
                  $arrId.=',';
                  }
                  $i++;
                }
                $arrId.=")";
                $productInCart = getProductCart($conn, $arrId);//select Product vs Condition
                $ContentDelete = "Delete Cart";
                $ContentTotal  = "Total";
                if ($productInCart->num_rows) {
                  $total = 0;
                  while($row = $productInCart->fetch_assoc()) {
                    $idProduct        = $row['id'];
                    $product_name     = $row['product_name'];
                    $product_discount = $row['product_discount'];
                    $product_picture  = "../uploadProduct/" . $row['product_picture'];
                    $price            = $row['product_price']*(100 - $product_discount)/100;
                    $total            += $price*$cart[$idProduct]['quantity'];
                ?>
                  <tr>
                    <td><?php echo $idProduct?></td>
                    <td><img style="width: 100px;height: 100px" src="<?php echo $product_picture?>"></td>
                    <td><?php echo $product_name?></td>
                    <td><?php echo $product_discount?></td>
                    <td><?php echo $price?>-$</td>
                    <td><?php echo $cart[$idProduct]['quantity']?></td>
                    <td class="icon_td">
                      <a href="in_item_cart.php?id=<?php echo $idProduct?>">
                        <i class="fa fa-plus"></i>
                      </a>
                    </td>
                    <td class="icon_td">
                      <a href="de_item_cart.php?id=<?php echo $idProduct?>">
                        <i class="fa fa-minus"></i>
                      </a>
                    </td>
                    <td class="icon_td">
                      <a href="delete_item_cart.php?id=<?php echo $idProduct?>"><i class="fa fa-trash"></i>
                      </a>
                    </td>
                  </tr>
                <?php
                  }
                }
              }
              ?>
          </tbody>
          <tfoot>
            <tr>
              <th><?php echo $ContentTotal?></th>
              <th colspan="3"></th>
              <th><?php echo $total?></th>
              <th colspan="2"><a href="list_products_front.php">Keep Buying</a></th>
              <th colspan="2"><a href="delete_cart.php"><?php echo $ContentDelete?></a></th>
            </tr>
          </tfoot>
        </table>                          
      </div>
    </div>
</div>
<?php include 'common_product/footer.php';?>
</body>
</html>