<?php 
define('SERVER', 'localhost');
define('BANCO', 'u765863036_dogu');
define('SENHA', '0607');
define('USER', 'arthur');

$conexao = new pdo('mysql:host=' . SERVER . ';dbname=' . BANCO, USER, SENHA);
?> 