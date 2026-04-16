<?php
// 送られてきたログイン情報を受け取る
$user = $_POST['user_id'];
$pass = $_POST['password'];

echo 'こんにちは、', $user, 'さん！<br>';
?>
