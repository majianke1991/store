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
						
						<form action="/store/ProfileUpdate" method="post" >
							<ul class="base-profile">
								<li>
									<strong>昵称：</strong><input name="name" type="text" value="${sessionScope.profile.name }" required="required">
								</li>
								<li>
									<strong>手机号：</strong><input name="phoneNum" type="text" value="${sessionScope.profile.phoneNum}" required="required">
								</li>
								<li>
									<strong>学校：</strong><input name="school" type="text" value="${sessionScope.profile.school}" required="required">
								</li>
							</ul>
							<div class="change-password">
								<input type="checkbox" name="checkbox" class="jq-modify-password"/>修改密码
							</div>
							<ul class="base-profile-password jq-profile-password hidden">
								<li>
									<input name="currentPass" type="password" placeholder="旧密码">
								</li>
								<li>
									<input name="newPass1" type="password" placeholder="新密码">
								</li>
								<li>
									<input name="newPass2" type="password" placeholder="确认新密码">
								</li>
							</ul>
							<div class="save-profile">
								<input class="btn btn-primary" type="submit" value="保存"/>
							</div>
							
							</form>
						</div>
					</div><!-- 我的资料  end -->
</body>
</html>