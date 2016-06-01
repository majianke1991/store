
<header>

<nav class="navbar navbar-inverse my-navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <!--折叠起来的导航栏实际上是一个带有 class .navbar-toggle 及两个 data- 元素的按钮。-->
            <button type="button" class="navbar-toggle pull-right my-navbar-toggle" data-toggle="collapse"
                    data-target="#my-navbar">
                <!--sr-only：除了屏幕阅读器外，其他设备上隐藏元素-->
                <span class="sr-only">Toggle navigation</span>
                <!--表示按钮中间的三条线-->
                <span class="icon-bar my-icon-bar"></span>
                <span class="icon-bar my-icon-bar"></span>
                <span class="icon-bar my-icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/store/pages/index.jsp">
                <!--<img width="auto" height="50px" src="../img/matetrip-logo.jpg" alt="">-->
                MateTrip
            </a>
        </div>
        <div class="collapse navbar-collapse" id="my-navbar">
            <ul class="nav navbar-nav my-fun-nav">
                <li class="active"><a href="/store/pages/index.jsp" data_id="index">首页</a></li>
                <li><a href="/store/pages/activity.jsp" data_id="activity">出行活动</a></li>
                <li><a href="/store/pages/strategy.jsp" data_id="strategy">达人攻略</a></li>
                <li><a href="/store/pages/travelSharing.jsp" data_id="travelSharing">分享会</a></li>
                <li><a href="/store/pages/messageLeave.jsp" data_id="messageLeave">留言</a></li>
                <li><a href="/store/pages/aboutUs.jsp" data_id="aboutUs">关于我们</a></li>
            </ul>
            <ul class="nav navbar-nav pull-right">
				<c:choose>
					<c:when test="${empty sessionScope.profile }">
					<li><a href="/store/pages/login.jsp">登陆</a>/<a href="/store/pages/regist.jsp">注册</a></li>
					</c:when>
					<c:otherwise>
					 <li><a href="/store/pages/myAccount/myAccount.jsp" >${sessionScope.profile.name }</a>/<a href="/store/logoutS">退出</a></li>
					</c:otherwise>
				</c:choose>
             

            </ul>
        </div>
    </div>
</nav>
</header>