<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>regist page</title>
	<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="/store/css/regist.css">
    <script src="/store/js/jquery-1.11.2.js"></script>
    <script src="/store/myjs/regist.js"></script>


	
</head>
<body>
    <div class="bg-box">

        <div class="regist-box">
            <!-- <div class="matetrip-logo">
                <img src="/store/img/2.jpg" alt="">
            </div> -->
            
            <div class="errorMsg-show">${requestScope.ErrorMsg }</div>
            <form action="/store/registS">
                <input name="name" type="text" placeholder="请输入您的真实名字" required="required">
                <input name="phone" type="text" placeholder="请输入手机号" required="required">
                <input name="school" type="text" placeholder="请输入您所在学校">
                <input name="password" type="password" placeholder="请输入密码" required="required">
                <input name="cpassword" type="password" placeholder="请再次输入密码" required="required">
                <input type="submit" class="sure-regist" value="注册">
            </form>
            <div class="toLogin">
                已有账号？
                <a href="login.jsp">马上登陆</a>
            </div>
           </div>
        </div>
</body>
</html>