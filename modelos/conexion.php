<?php

class Conexion{

	static public function conectar(){

		// locale
		// $link = new PDO("mysql:host=localhost;dbname=pos",
		// 	            "root",
		// 	            "");

		$link = new PDO("mysql:host=remotemysql.com;dbname=MxR7rE6SKZ",
			            "MxR7rE6SKZ",
			            "cH582Ki0R1");

		$link->exec("set names utf8");

		return $link;

	}

}