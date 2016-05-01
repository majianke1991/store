<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>创建活动</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/store/css/plug-css/bootstrap.min.css">
<link rel="stylesheet" href="/store/css/base.css"/>
<link rel="stylesheet" type="text/css" href="/store/css/plug-css/jquery.datetimepicker.css"/>
<link rel="stylesheet" href="/store/css/createActivity.css"/>
<script type="text/javascript" src="/store/js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="/store/myjs/global.js"></script>
<!--jquery时间日期插件-->
<script src="/store/js/jquery.datetimepicker.js"></script>
<script src="/store/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/store/myjs/global.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
		
		
		
			<div class="col-md-10 col-md-offset-1">
				<p class="create-active-title">创建出行活动</p>
			</div>
			<div class="col-md-10 col-md-offset-1">
				<div class="errorMsg">
					<c:if test="${not empty requestScope.uploadMessage }">
						<div class="errorMsg-show">！警告：${requestScope.uploadMessage }</div>
					</c:if>
				</div>
				<div class="createActivity">
				<form id="form1" name="form1" method="post" action="/store/ActivityServlet" enctype="multipart/form-data">
					<div class="create-activity-back"><a class="btn btn-primary pull-right create-activity-back-btn" href="#">返回</a></div>
					<ul class="create-activity-datail clearfix">
									<li><strong>主题：</strong><input name="zhuti" type="text" value="" required="required"/></li>
									<li>
										<strong>活动状态：</strong>
										<input type="radio" name="sex" checked>已开展
										<input type="radio" name="sex">未开展
									</li>
									<li><strong>预算(元)：</strong><input name="estimate" type="text" value="" required="required"/></li>
									<li><strong>活动时间：</strong>
										<input name="fromDate" type="text" class="datetimepicker2"/>
										TO
										<input name="endDate" type="text" class="datetimepicker2"/>
									</li>
									<li><strong>主题图片：</strong><div class="upload-theme-image">
									<input type="file" name="image" accept="image/jpeg,image/gif,image/png">选择文件</div></li>
									<li class="create-activity-content">
										<strong>活动说明：</strong>
										<textarea name="description" form="form1"></textarea>
									</li>
									<li>
										<input type="submit" class="btn btn-primary" value="保存">
									</li>
								</ul>
				</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('.datetimepicker2').datetimepicker({
			yearOffset:0,
			lang:'ch',
			timepicker:false,
			format:'d/m/Y',
			formatDate:'Y/m/d'

		});
	</script>
</body>
</html>