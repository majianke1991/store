<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>regist page</title>
    <link rel="stylesheet/less" href="../css/regist.less">
    <script src="../js/less.js"></script>
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../myjs/regist.js"></script>
</head>
<body>
    <div class="bg-box">

        <div class="regist-box">
            <div class="matetrip-logo">
                <img src="../img/2.jpg" alt="">
            </div>
            <form action="login">
                <input type="text" placeholder="请输入您的真实名字" required="required">
                <input type="text" placeholder="请输入手机号" required="required">
                <input type="text" placeholder="请输入您所在学校">
                <input type="password" placeholder="请输入密码" required="required">
                <input type="password" placeholder="请再次输入密码" required="required">
                <div class="sure-regist">注册</div>
            </form>
            <div class="toLogin">
                已有账号？
                <a href="login.html">马上登陆</a>
            </div>
        </div>
    </div>
</body>
</html>