<?php 
class ProductModel extends ConnectDB{
	const PAGING = 3;
	public function getListProduct($page){
			$start = ($page-1)*self::PAGING;
			$sql = "SELECT * FROM products LIMIT ".$start.",".self::PAGING;
			$listProduct = mysqli_query($this->conn, $sql);
			return $listProduct;
	}
	public function getTotalProduct(){
		$sql = "SELECT count(*) as total FROM products";
		$totalProduct =  mysqli_query($this->conn, $sql);
		$row = $totalProduct->fetch_assoc();
		return $row['total'];
	}
}
?>