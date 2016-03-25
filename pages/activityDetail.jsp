<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>出行活动详细页面</title>
	<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/activityDetail.css">
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../myjs/global.js"></script>
</head>
<body>
<div class="activityDetail">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                <p class="text-center activity-title">${requestScope.HD.zhuti }</p>
                <div class="row activity-others">
                    <div class="col-md-8">
                        <p class="activity-time">活动时间：<span>${requestScope.HD.from_date}-${requestScope.HD.end_date}</span></p>
                        <p class="activity-place">活动预算：<span>${requestScope.HD.esltimate}</span>元</p>
                    </div>
                    <div class="col-md-4">
                        <img class="activity-theme-img" src="./../${requestScope.HD.image_path}"/>
                    </div>
                </div>
                <div class="activity-content">${requestScope.HD.description}</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>