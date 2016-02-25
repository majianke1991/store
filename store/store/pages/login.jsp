<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login page</title>
    <link rel="stylesheet/less" href="/store/css/login.less">
    <script src="/store/js/less.js"></script>
    <script src="/store/js/jquery-1.11.2.js"></script>
    <script src="/store/myjs/login.js"></script>
</head>
<body>
    <div class="login">
    	debug 
    	${requestScope.errorMsg }
        <div class="login-box">
            <div class="matetrip-logo">
                <img src="/store/img/2.jpg" alt="">
            </div>
            <form action="/store/loginS">
            <input type="text" name="phoneNum" placeholder="请输入手机号/名字" required="required">
            <input type="password" name="password" placeholder="请输入密码" required="required">
            <input type="submit" class="sure-login" value="登陆" />
            </form>
            <div class="forgetPass">
                忘记密码？
                <a href="searchPass.html">找回密码</a>
            </div>
            <div class="or">OR</div>
            <div class="toRegist">
                还没有账号？
                <a href="pages/regist.jsp">马上去注册</a>
            </div>
        </div>
    </div>
</body>
</html>