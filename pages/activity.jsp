<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>activity plp</title>
    <link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/activity.css">
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../myjs/global.js"></script>
    <script type="text/javascript" src="../myjs/activity.js"></script>
</head>
<body>
	<jsp:include page="/pages/header.jsp"/>
    <div class="activity">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <!--one activity start-->
                    <c:forEach var="activity" items="${requestScope.hds }">
                    <div class="row one-activity">
                        <div class="col-md-4 activity-imgLeft">
                            <div class="activity-img">
                                <img src="../${activity.value.image_path }" alt="">
                                <a class="activity-theme" href="activityDetail.jsp?hId=${activity.value.id }" target="_blank">${activity.value.zhuti }</a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="activity-detail">
                                <p class="activity-time">活动时间：<span>${activity.value.from_date } & ${activity.value.end_date }</span></p>

                                <p class="activity-budget">活动预算：<span>${activity.value.esltimate }</span>元</p>

                                <p class="activity-explain">
                                    <span class="text-length-limit">
                                        ${activity.value.description }
                                    </span>
                                    <a href="activityDetail.jsp?hId=${activity.value.id }" target="_blank">[详情]</a>
                                </p>
                            </div>
                        </div>
                    </div><!--one activity end-->
                    </c:forEach>
                    
                    
                    
                    
                   
                   
                </div>
            </div>
        </div> 
    </div>
</body>
</html>