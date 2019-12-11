<?php 
class ConnectDB{
	public $conn;
	public function connect(){
		$this->conn = new mysqli('localhost', 'root', 'mysql', 'demo_mvc_user');
		return $this->conn;
	}
	public function __construct(){
		$this->connect();
	}
}
?>