<?php 
class ProductModel extends ConnectDB{
	const PAGING = 3;
	public function getListProduct($page){
			$start = ($page-1)*self::PAGING;
			$sql = "SELECT 
			products.id, products.product_name,products.product_info,
			categories.id as category_ID, categories.name as category_name  
			FROM products 
			INNER JOIN categories ON products.category_id = categories.id 
			WHERE products.category_id = 1 
			LIMIT ".$start.",".self::PAGING;
			$listProduct = mysqli_query($this->conn, $sql);
			return $listProduct;
	}
	public function getTotalProduct(){
		$sql = "SELECT count(*) as total FROM products";
		$totalProduct =  mysqli_query($this->conn, $sql);
		$row = $totalProduct->fetch_assoc();
		return $row['total'];
	}
	public function getListCategoryProduct(){
		//id, name
		//............. WHERE active = 1
	}
}
//$sql = "SELECT products.id, products.product_name, categories.category_id as category_id, categories.name as category_name FROM products INNER JOIN categories ON products.category_id = categories.category_id WHERE products.category_id = 1 LIMIT " . $start 
?>