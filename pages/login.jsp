<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login page</title>
	<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="/store/css/login.css">
    <script src="/store/js/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="../myjs/global.js"></script>
    <script src="/store/myjs/login.js"></script>

	
</head>
<body>
    <div class="login">	
        <div class="login-box">
        <div class="errorMsg-show">${requestScope.errorMsg }</div>
            <form action="/store/loginS">
            <input type="text" name="phoneNum" placeholder="请输入手机号/名字" required="required">
            <input type="password" name="password" placeholder="请输入密码" required="required">
            <input type="submit" class="sure-login" value="登陆" />
            </form>
            <div class="forgetPass">
                忘记密码？
                <a href="searchPass.jsp">找回密码</a>
            </div>
            <div class="or">OR</div>
            <div class="toRegist">
                还没有账号？
                <a href="regist.jsp">马上去注册</a>
            </div>
        </div>
    </div>
</body>
</html>