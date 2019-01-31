<?php

class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=sql10.freemysqlhosting.net;dbname=sql10276639",
			            "sql10276639",
			            "DC5guFZcx2");

		$link->exec("set names utf8");

		return $link;

	}

}