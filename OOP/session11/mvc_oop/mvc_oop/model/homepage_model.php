<?php
require_once 'config/database.php';

class HomePageModel extends ConnectDB {

	public function getListProduct($productCategoryID){
		if(is_null($productCategoryID)){
			$dbres = mysqli_query($this->conn,"SELECT * FROM products");
		}else{
        	$dbres = mysqli_query($this->conn,"SELECT * FROM products WHERE product_category_id = $productCategoryID");
    	}

        $products = array();

        while ( ($obj = mysqli_fetch_object($dbres)) != NULL ) {
            $products[] = $obj;
        }
        return $products;
	}
	public function deleteProduct($id){
		mysqli_query($this->conn,"DELETE FROM products WHERE id = $id");
		header("Location: index.php");
	}
	public function getListUser(){
        $dbres = mysqli_query($this->conn,"SELECT * FROM users");

        $users = array();

        while (($obj = mysqli_fetch_object($dbres)) != NULL ) {
            $users[] = $obj;
        }
        return $users;
	}
	public function getListCategory(){
        $dbres = mysqli_query($this->conn,"SELECT * FROM product_categories");

        $product_categories = array();

        while ( ($obj = mysqli_fetch_object($dbres)) != NULL ) {
            $product_categories[] = $obj;
        }
        return $product_categories;
	}

}