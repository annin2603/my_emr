<?php session_start(); ?>
<?php
// $pdo = new PDO('mysql:host=db;dbname=medical_staff;charset=utf8',
//                'staff',
//                'password');
// host=localhost ではなく host=db (ymlで決めた名前) にするのがDockerのコツです！
//PDOはDBを作ってから有効にする

// 送られてきたログイン情報を受け取る
$user = $_POST['user_id'];
$pass = $_POST['password'];

echo 'こんにちは、', $user, 'さん！<br>';
?>
