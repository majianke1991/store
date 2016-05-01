<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>创建结果</title>
    <link rel="stylesheet" href="/store/css/plug-css/bootstrap.min.css">
	<link rel="stylesheet" href="/store/css/base.css"/>
	<link rel="stylesheet" href="/store/css/header.css">
    <link rel="stylesheet" href="/store/css/uploadResult.css">
    <script src="/store/js/jquery-1.11.2.js"></script>
    <script src="/store/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/store/myjs/global.js"></script>	
</head>
<body>
<jsp:include page="header.jsp" />
<div class="uploadResult">
	<div class="container">
		<div class="row">
			<div class="success-strategy-write">
				${requestScope.uploadMessage }
			</div>
			
			
		</div>
	</div>
</div>

</body>
</html>