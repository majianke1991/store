<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 我的资料  start -->
					<div class="myProfile">
						<p class="myAccount-title">我的资料</p>
						<div class="myProfile-detail">
							<ul class="base-profile">
								<li>
									<strong>昵称：</strong><input type="text" value="夏雨" required="required">
								</li>
								<li>
									<strong>手机号：</strong><input type="text" value="18380448313" required="required">
								</li>
								<li>
									<strong>学校：</strong><input type="text" value="成都信息工程大学" required="required">
								</li>
								<li>
									<strong>性别：</strong><input type="radio" name="sex">男
									<input type="radio" name="sex" checked>女
								</li>
							</ul>
							<div class="change-password">
								<input type="checkbox" name="checkbox" class="jq-modify-password"/>修改密码
							</div>
							<ul class="base-profile-password jq-profile-password hidden">
								<li>
									<input type="password" placeholder="旧密码" required="required">
								</li>
								<li>
									<input type="password" placeholder="新密码" required="required">
								</li>
								<li>
									<input type="password" placeholder="确认新密码" required="required">
								</li>
							</ul>
							<div class="save-profile">
								<input class="btn btn-primary" type="submit" value="保存"/>
							</div>
						</div>
					</div><!-- 我的资料  end -->
</body>
</html>