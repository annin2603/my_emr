<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>ログイン</title>
</head>
<body>
    <form action="login_check.php" method="post" class="login_box">
        <h1>簡易電子カルテ</h1>
        <input type="text" name="user_id" placeholder="ユーザーID" required>
        <input type="password" name="password" placeholder="パスワード" required>
        <button>ログイン</button>
    </form>
</body>
</html>
