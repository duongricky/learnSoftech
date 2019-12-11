<?php
	if (class_exists('ConnectDB') == true) {
		class ProductModel extends ConnectDB {
			//Method upload Products Image
			public function uploadPicProducts($img){
				$path = 'uploadPicProducts/';
				if ($img['error'] != 0) {
					$fileName = "default.png";
				}
				else $fileName = uniqid().$img['name']; 
				$pathSave = $path.$fileName;
				move_uploaded_file($img['tmp_name'],$pathSave);
				return $fileName;
			}
			//Model of List Product
			//Phân trang mỗi trang có 5 sản phẩm
			const PAGING = 5;
			public function getListProduct($page){
				$start = ($page-1)*self::PAGING;
				$sql = "SELECT 
				products.id,product_name,product_info,product_price,product_picture,product_discount,
				categories.category_id as category_id, categories.name as category_name	
				FROM products 
				INNER JOIN categories ON products.category_id = categories.category_id 
				LIMIT ".$start.",".self::PAGING;
				$listUser = mysqli_query($this->conn,$sql);
				return $listUser;
				mysqli_close($this->conn);
			}
			public function getOneUser($idProduct){
				$sql = "SELECT * FROM products WHERE id = $idProduct";
				$getOneProduct = mysqli_query($this->conn,$sql);
				return $getOneProduct;
				mysqli_close($this->conn);
			}
			// Get total products
			public function getTotalProduct(){
				$sql = "SELECT count(*) as total FROM products";
				$totalProduct =  mysqli_query($this->conn, $sql);
				$row = $totalProduct->fetch_assoc();
				return $row['total'];
			}
			//end Model List Product
			//--------------------------------------------//
			//edit Products
			public function editProduct($idProduct,$product_name,$product_info,$product_price,$product_discount,$pro_category_id){
				$sql = "UPDATE products 
				SET product_name = '$product_name',product_info = '$product_info',
				product_price = '$product_price',product_discount = '$product_discount',
				category_id = $pro_category_id
				WHERE id = $idProduct";
				$editProduct = mysqli_query($this->conn,$sql);
				return $editProduct;
				mysqli_close($this->conn);
			}
			public function addProducts($product_name,$product_info,$product_price,$product_discount,$pro_category_id,$product_picture) {
				$product_picture = $this->uploadPicProducts($product_picture);
				$sql = "INSERT INTO products (
				product_name,product_info,product_price,product_discount,category_id,product_picture)
				VALUES ('$product_name','$product_info','$product_price','$product_discount',$pro_category_id,'$product_picture')";
				$addProducts = mysqli_query($this->conn,$sql);
				return $addProducts;
				mysqli_close($this->conn);
			}
			//Method Delete Products
			public function deleteProducts($idProduct){
				$sql = "DELETE FROM products WHERE id = $idProduct";
				$deleteProduct = mysqli_query($this->conn,$sql);
				parent::movePage('index.php?action=list_products');
				return $deleteProduct;
				mysqli_close($this->conn);
			}
			// get All name Category
			public function getCategoryProduct(){
				$sql = "SELECT name,category_id FROM categories";
				$getNameProduct = mysqli_query($this->conn,$sql);
				return $getNameProduct;
				mysqli_close($this->conn);
			}
		}
	}
?>