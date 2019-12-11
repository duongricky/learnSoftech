<?php
	class Product {
		private $conn;
		private $db_servar = "localhost";
		private $db_user = "root";
		private $db_pass = "mysql";
		private $db_name = "php11_shop";
		function __construct() {
			$this->conn = new mysqli($this->db_servar,$this->db_user,$this->db_pass,$this->db_name);
			if ($this->conn->connect_error) {
				die("Connection failed: " . $this->conn->connect_error);
			}
			return $this->conn;
		}
		public function InsertData($product_name,$product_info,$product_price,$product_picture,$product_discount) {
			$path        = 'uploadProduct/';
			$fileNamePic = $product_picture['name'];
			$pathSave    = $path.$fileNamePic;
			move_uploaded_file($product_picture['tmp_name'],$pathSave);
			$sqlInsert = "INSERT INTO products
			(product_name,product_info,product_price,product_picture,product_discount)
			VALUES ('$product_name','$product_info','$product_price','$fileNamePic','$product_discount')";
			return $this->conn->query($sqlInsert);
			$this->conn->close();
		}
	}