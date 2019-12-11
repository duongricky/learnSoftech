<?php
	class Car {
		public $car_name;
		private $license_plate;
		protected $car_life;
		private $car_manufacturer;
		public function Start() {
			echo "Start" . "<br>";
		}
		public function Stop() {
			echo "Stop";
		}
	}	
	class Mercedes extends Car {
		public function getname() {
			echo $this->car_life = "BMW" . "<br>";
		}
	}
$Car1 = new Mercedes();
$Car1->Start();
$Car1->getname();
$Car1->Stop();