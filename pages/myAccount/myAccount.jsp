<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>my account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/store/css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/store/css/plug-css/jquery.datetimepicker.css"/>
    <link rel="stylesheet" href="/store/css/base.css"/>
    <link rel="stylesheet" href="/store/css/header.css"/>
    <link rel="stylesheet" href="/store/css/myAccount.css"/>
    <script type="text/javascript" src="/store/js/jquery-1.11.2.js"></script>
    <!--jquery时间日期插件-->
    <script src="/store/js/jquery.datetimepicker.js"></script>

    <script src="/store/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/store/myjs/global.js"></script>
    <script type="text/javascript" src="/store/myjs/myAccount.js"></script>


	

</head>
<body>
<jsp:include page="/pages/header.jsp"/>


<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12"><!-- 最外层 -->
            <div class="myAccount">
            	<c:if test="${not empty requestScope.errorMsg }">
				${requestScope.errorMsg }
				</c:if>

                <div class="myAccount-detail">
                    <div class="row">

                        <!-- left start -->
                        <div class="col-md-4">
                            <div class="clearfix">
                                <div class="row">
                                    <div class="myphoto">
                                        <img src="/store/img/1.jpg">
                                        <a class="upload-photo hidden" href="#"><input type="file"/>修改头像</a>
                                        <input type="file" class="hidden"/>
                                    </div>
                                    <div class="myname col-sm-12">
                                        <a href="#">夏小雨【
                                            <!-- <span>会员</span> -->
                                            <span>管理员</span> <!-- 管理员活动发起 -->
                                            】</a>
                                    </div>
                                </div>
                            </div>
                            <ul class="nav-myAccount">
                                <li><a href="#" onclick="myAccountLoad('/store/pages/myAccount/myAccountStrategy.jsp');return false;">我的游记</a>
                                </li>
                                <li><a href="#" onclick="myAccountLoad('/store/pages/myAccount/myAccountProfile.jsp');return false;">我的资料</a>
                                </li>
                                <li><a href="#" onclick="myAccountLoad('/store/pages/myAccount/myAccountActivity.jsp');return false;">活动管理</a>
                                </li>
                                <!-- 管理员才有 -->
                                <li><a href="#" onclick="myAccountLoad('/store/pages/myAccount/myAccountSharing.jsp');return false;">旅行分享会</a>
                                </li>
                                <!-- 管理员才有 -->
                            </ul>
                        </div>
                        <!-- left end -->


                        <!-- right start -->
                        <div class="col-md-8 jq-myAccount-right">
                            <!-- 我的游记   start -->
                            <div class="myStrategy">
                                <p class="myAccount-title">我的游记</p>
                                <div class="myStrategy-detail">
                                    <table class="strategy-detail-table table table-striped">
                                        <thead>
                                        <tr>
                                            <th>发表日期</th>
                                            <th>标题</th>
                                            <th>点赞</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
		                                  <c:forEach var="item" items="${requestScope.gonglues }">
											<tr>
												<td>${item.date }</td>
												<td><a href="#">${item.title }</a></td>
												<td>2</td>
												<td><a class="delete" href="#" onclick="delStrategy('${item.id }')">删除</a></td>
											</tr>
											</c:forEach>

                                        </tbody>
                                    </table>
                                    <!-- 分页 -->
                                    <nav class="pull-right">
                                        <ul class="pagination">
                                            <!-- <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li> -->
                                            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                            <!-- <li><a href="#">2 <span class="sr-only">(current)</span></a></li>
                                            <li><a href="#">3 <span class="sr-only">(current)</span></a></li>
                                            <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li> -->
                                        </ul>
                                    </nav>
                                </div>
                            </div><!-- 我的游记   end -->
                    </div>
                    <!-- right end -->

                </div>
            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>