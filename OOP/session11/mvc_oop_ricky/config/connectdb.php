<?php 
class ConnectDB{
	public $conn;
	public function connect(){
		$this->conn = mysqli_connect('localhost', 'root', 'mysql', 'php11_shop');
		return $this->conn;
	}
	public function movePage($link){
		return header("Location: " .$link);
	}
	//Constructor Connect Database
	public function __construct(){
		$this->connect();
	}
}
?>