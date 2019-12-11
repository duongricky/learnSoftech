<!DOCTYPE html>
<html>
<head>
	<title>Example 2 - Session 1 PHP</title>
</head>
<body>
	<?php 
		define("TOTALMEMBER", 100);
		// 1, khai bao 2 bien a va b va gan gia tri cho chung
		$a = 5;
		$b = 10;

		// 2, cong tru nhan chia ket qua
		echo "Gia tri a + b la:";
		echo $a + $b;
		echo "<br/>Gia tri a - b la:";
		echo $a - $b;
		echo "<br/>Gia tri a * b la:";
		echo $a * $b;
		echo "<br/>Gia tri a / b la:";
		echo $a / $b;
		// 3, neu a lon hon b thi xuat ra...
		echo "<br/>";
		if($a > $b) {
			echo "a lon hon b";
		}else {
			echo "b lon hon a";
		}
		// 4, neu a lon hon b thi chay vong lap
		echo "<br/>";
		if($a > $b) {
			for($i = $a; $i <= $b; $i++){
				echo $i;
				echo "<br/>";
			}
		}else {
			for($i = $a; $i <= $b; $i++){
				echo $i;
				echo "<br/>";
			}
		}
		// 5, viet ham tinh tong a va b
		function total($a = 6, $b = 5) {
			return $a + $b;
		}
		//var_dump($b);
		//exit();
		echo "<br> Tong a va b theo ham total";
		echo total($a, $b);
		// Dinh nghia hang trong PHP
		echo "<br/>";
		
		echo TOTALMEMBER;
		echo "<br/>";
		
		echo total(44);

		// array va json
		$arrStudent1 = array(0 => "Nam",1 => "Nguyen",2 => "Trung");
		echo "<br/>";
		echo $arrStudent1[1];
		$arrStudent2 = array(
			0    => array( "id" => 1, "birthday" => 1987, "city" => "DN", "name" => "Nam"),
			1 => array( "id" => 2, "birthday" => 2000, "city" => "HN", "name" => "Trung"),
			2  => array( "id" => 3, "birthday" => 1999, "city" => "HCM", "name" => "Nguyen"),
			);
			echo "<br/><br/><br/><br/>";
		var_dump($arrStudent2);

		$arrStudent3 = array("id" => 4, "birthday" => 2001, "city" => "HCM", "name" => "Duc");
		echo "<br/><br/><br/><br/>";
		var_dump($arrStudent3);
		array_push($arrStudent2, $arrStudent3);
		echo "<br/><br/><br/><br/>";
		var_dump($arrStudent2);
		exit();
		echo "<br/><br/><br/><br/>";
		echo $arrStudent2[1]['birthday'];
		//console.log(a);
		var_dump($arrStudent2);
		echo "<br/>";
		foreach($arrStudent2 as $student){
			foreach($student as $students){
				echo $students;
				echo "----";
			}
			echo "<br/>";
			
		}
	?>
</body>
</html>