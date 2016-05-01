<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>创建活动</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/store/css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="/store/css/base.css"/>
    <link rel="stylesheet" href="/store/css/createSharing.css"/>
    <link rel="stylesheet" type="text/css" href="/store/css/plug-css/jquery.datetimepicker.css"/>
    <script type="text/javascript" src="/store/js/jquery-1.11.2.js"></script>
    <script src="/store/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/store/myjs/global.js"></script>
    <!--jquery时间日期插件-->
	<script src="/store/js/jquery.datetimepicker.js"></script>


</head>
<body>
<div class="container">
    <div class="row">
    
    	
        <div class="col-md-10 col-md-offset-1">
            <p class="create-active-title">创建分享会活动</p>
        </div>
        <div class="col-md-10 col-md-offset-1">
        	<div class="errorMsg">
				<c:if test="${not empty requestScope.uploadMessage }">
					<div class="errorMsg-show">！警告：${requestScope.uploadMessage }</div>
				</c:if>
			</div>
            <div class="createActivity">
            <form id="form1" name="form1" method="post" action="/store/ShareUploadServlet" enctype="multipart/form-data">
                <div class="create-activity-back"><a class="btn btn-primary pull-right create-activity-back-btn" href="#">返回</a></div>
                <ul class="create-activity-datail clearfix">
                    <li><strong>分享会主题：</strong><input name="zhuti" type="text" value="" required="required"/></li>
                    <li>
                        <strong>分享会状态：</strong>
                        <input type="radio" name="sex" checked>已开展
                        <input type="radio" name="sex">未开展
                    </li>
                    <li><strong>地点：</strong><input name="place" type="text" value="" required="required"/></li>
                    <li><strong>分享会时间：</strong>
                        <input name="date" type="text" value="2014/03/15 05:06" class="datetimepicker"/>
                    </li>
                    <li><strong>主题图片：</strong><div class="upload-theme-image"><input name="image" type="file" accept="image/jpeg,image/gif,image/png">选择文件</div></li>
                    <li class="create-activity-content">
                        <strong>活动说明：</strong>
                        <textarea name="description" form="form1"></textarea>
                    </li>
                    <li>
                        <button class="btn btn-primary">保存</button>
                    </li>
                </ul>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
	$('.datetimepicker').datetimepicker();
	$('.datetimepicker').datetimepicker({
		value:'2015/04/15 05:03',step:10
		});
	</script>
</body>
</html>