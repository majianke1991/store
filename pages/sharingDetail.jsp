<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>分享会详细页面</title>
    <link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/sharingDetail.css">
    <script src="../js/jquery-1.11.2.js"></script>
   <script src="../js/bootstrap.min.js"></script>
   <script type="text/javascript" src="../myjs/global.js"></script>

	
</head>
<body>
    <div class="sharingDetail">
        <div class="container">
            <div class="row">
            	
            	<c:if test="${not empty requestScope.share }">
                <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                    <p class="text-center sharing-title">${requestScope.share.zhuti }</p>
                    <div class="row sharing-others">
                        <div class="col-md-8">
                            <p class="sharing-time">时间：<span>${requestScope.share.date} </span></p>
                            <p class="sharing-place">地点：<span>${requestScope.share.place}</span></p>
                        </div>
                        <div class="col-md-4">
                            <img class="sharing-theme-img" src="../${requestScope.share.image_path}"/>
                        </div>
                    </div>
                    <div class="sharing-content">
                      ${requestScope.share.description}
                    </div>


                </div>
            	</c:if>
            </div>
        </div>
    </div>
</body>
</html>