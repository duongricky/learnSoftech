<?php
	if (class_exists('ConnectDB') == true) {
		class CategoryModel extends ConnectDB {
			public function addCategory($category_name){
				$sql = "INSERT INTO categories (name) VALUES ('$category_name')";
				$addCate = mysqli_query($this->conn,$sql);
				parent::movePage('index.php?action=list_category');
				return $addCate;
				mysqli_close($this->conn);
			}
			public function listCategory(){
				$sql = "SELECT * FROM categories";
				$listCate = mysqli_query($this->conn,$sql);
				return $listCate;
				mysqli_close($this->conn);
			}
			//get INFO category
			public function getOneCate($id_Cate){
				$sql = "SELECT name FROM categories WHERE category_id = $id_Cate";
				$resultGet = mysqli_query($this->conn,$sql);
				return $resultGet;
				mysqli_close($this->conn);
			}
			//Update Info Category
			public function editCate($id_Cate,$category_name){
				$sql = "UPDATE categories SET name = '$category_name' WHERE category_id = $id_Cate";
				$resultUpdate = mysqli_query($this->conn,$sql);
				return $resultUpdate;
				mysqli_close($this->conn);
			}
			public function deleteCate($id_Cate){
				$sql = "DELETE FROM categories WHERE category_id = $id_Cate";
				$resultUpdate = mysqli_query($this->conn,$sql);
				// parent::movePage('index.php?action=list_category');
				return $resultUpdate;
				mysqli_close($this->conn);
			}
		}
	}
?>