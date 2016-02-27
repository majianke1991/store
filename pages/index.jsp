<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>matetrip index</title>
    <link rel="stylesheet" href="../../bootstrap-3.3.5/dist/css/bootstrap.min.css">
    <link rel="stylesheet/less" href="../css/index.less">
    <script src="../js/less.js"></script>
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../../bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
    <script src="../myjs/index.js"></script>
</head>
<body>

	<jsp:include page="/pages/header.jsp"/>
    <!--head nav-->
    <nav class="navbar navbar-inverse my-navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <!--折叠起来的导航栏实际上是一个带有 class .navbar-toggle 及两个 data- 元素的按钮。-->
                <button type="button" class="navbar-toggle pull-right my-navbar-toggle" data-toggle="collapse"
                        data-target="#my-navbar" >
                    <!--sr-only：除了屏幕阅读器外，其他设备上隐藏元素-->
                    <span class="sr-only">Toggle navigation</span>
                    <!--表示按钮中间的三条线-->
                    <span class="icon-bar my-icon-bar"></span>
                    <span class="icon-bar my-icon-bar"></span>
                    <span class="icon-bar my-icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <!--<img width="auto" height="50px" src="../img/matetrip-logo.jpg" alt="">-->
                    MateTrip
                </a>
            </div>
            <div class="collapse navbar-collapse" id="my-navbar">
                <ul class="nav navbar-nav my-fun-nav">
                    <li class="active"><a href="index.html">首页</a></li>
                    <li><a href="javascript:void(0);" onclick="ajaxPageSet('strategy.html');">达人攻略</a></li>
                    <li><a href="javascript:void(0);" onclick="ajaxPageSet('imgShow.html');">图片欣赏</a></li>
                    <li><a href="javascript:void(0);" onclick="ajaxPageSet('messageLeave.html');">留言</a></li>
                    <li><a href="javascript:void(0);" onclick="ajaxPageSet('aboutUs.html');">关于我们</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a href="login.html">登陆</a>/<a href="regist.html">注册</a></li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="ajaxPage">
        <!--carousel-->
        <div id="myCarousel" class="carousel slide myCarousel">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../img/main1.jpg" alt="First slide">
                    <div class="carousel-caption">标题 1</div>
                </div>
                <div class="item">
                    <img src="../img/main2.jpg" alt="Second slide">
                    <div class="carousel-caption">标题 2</div>
                </div>
                <div class="item">
                    <img src="../img/2.jpg" alt="Third slide">
                    <div class="carousel-caption">标题 3</div>
                </div>
            </div>
        </div>

        <div id="intro">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2"><!--内容部分都用这个尺寸-->
                        <h2 class="part-title">关于校园侣行</h2>
                        <p class="small">Do you have a specific question, comment or inquiry? Don’t keep it to yourself. Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.Tell us what
                            it is and we’ll show you how to get the answer as quickly as possible.</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="activity-recent">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2"><!--内容部分都用这个尺寸-->
                        <h2 class="part-title">园园的活动</h2>
                        <!--one activity-->
                        <div class="row one-activity">
                            <div class="col-md-4 activity-imgLeft">
                                <div class="activity-img">
                                    <img src="../img/5.jpg" alt="">
                                    <div class="activity-isOpen-mark">未开展</div>
                                </div>
                            </div>
                            <div class="col-md-7 col-md-offset-1">
                                <div class="activity-detail">
                                    <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>
                                    <p class="activity-budget">活动预算：<span>239</span>元</p>
                                    <p class="activity-explain">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                        步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                        我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                        响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?我们检查了
                                        负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定响应方政
                                        策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--one activity-->
                        <div class="row one-activity">
                            <div class="col-md-4 activity-imgLeft">
                                <div class="activity-img">
                                    <img src="../img/8.jpg" alt="">
                                    <div class="activity-isOpen-mark">已开展</div>
                                </div>
                            </div>
                            <div class="col-md-7 col-md-offset-1">
                                <div class="activity-detail">
                                    <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>
                                    <p class="activity-budget">活动预算：<span>259</span>元</p>
                                    <p class="activity-explain">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                        步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                        我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--one activity-->
                        <div class="row one-activity">
                            <div class="col-md-4 col-xs-12 activity-imgLeft">
                                <div class="activity-img">
                                    <img src="../img/13.jpg" alt="">
                                    <div class="activity-isOpen-mark">已开展</div>
                                </div>
                            </div>
                            <div class="col-md-7 col-md-offset-1 col-xs-12">
                                <div class="activity-detail">
                                    <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>
                                    <p class="activity-budget">活动预算：<span>259</span>元</p>
                                    <p class="activity-explain">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                        步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                        阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                        我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="strategy">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2">
                        <h2 class="part-title">精选攻略</h2>
                        <div class="row">
                            <div class="col-md-5 col-xs-12 one-strategy">
                                <img class="sharePhoto" src="../img/11.jpg" alt="">
                                <div class="thumbnail">
                                    <img src="../img/12.jpg"
                                         alt="通用的占位符缩略图">
                                </div>
                                <div class="caption">
                                    <h3>分享者：<span>唐莹</span></h3>
                                    <p><a href="#">西岭雪山，你值得拥有---人生的第一次大雪</a></p>
                                </div>
                            </div>
                            <div class="col-md-5 col-xs-12 one-strategy">
                                <img class="sharePhoto" src="../img/11.jpg" alt="">
                                <div class="thumbnail">
                                    <img src="../img/12.jpg"
                                         alt="通用的占位符缩略图">
                                </div>
                                <div class="caption">
                                    <h3>分享者：<span>唐莹</span></h3>
                                    <p><a href="#">一场说走就走的旅行---毕棚沟</a></p>
                                </div>
                            </div>
                           <!-- <div class="clearfix visible-md-block visible-lg-block visible-sm-block"></div>-->
                            <div class="row">
                                <div class="col-md-5 col-xs-12 one-strategy">
                                    <img class="sharePhoto" src="../img/11.jpg" alt="">
                                    <div class="thumbnail">
                                        <img src="../img/12.jpg"
                                             alt="通用的占位符缩略图">
                                    </div>
                                    <div class="caption">
                                        <h3>分享者：<span>唐莹</span></h3>
                                        <p><a href="#">西岭雪山，你值得拥有---人生的第一次大雪</a></p>
                                    </div>
                                </div>
                                <div class="col-md-5 col-xs-12 one-strategy">
                                    <img class="sharePhoto" src="../img/11.jpg" alt="">
                                    <div class="thumbnail">
                                        <img src="../img/12.jpg"
                                             alt="通用的占位符缩略图">
                                    </div>
                                    <div class="caption">
                                        <h3>分享者：<span>唐莹</span></h3>
                                        <p><a href="#">一场说走就走的旅行---毕棚沟</a></p>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="members">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2">
                        <h2 class="part-title">成员介绍</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" src="../img/5.large.jpg"
                                             alt="媒体对象">
                                    </a>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading">陈导</h4>
                                        <p class="small">越努力，越幸运</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" src="../img/5.large.jpg"
                                             alt="媒体对象">
                                    </a>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading">陈导</h4>
                                        <p class="small">越努力，越幸运</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" src="../img/5.large.jpg"
                                             alt="媒体对象">
                                    </a>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading">陈导</h4>
                                        <p class="small">越努力，越幸运</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" src="../img/5.large.jpg"
                                             alt="媒体对象">
                                    </a>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading">陈导</h4>
                                        <p class="small">越努力，越幸运</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2">
                        <h2 class="part-title">找到我们</h2>
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <p class="small">联系人：<span>唐静</span></p>
                            </div>
                            <div class="col-md-12 col-xs-12">
                                <p class="small">联系方式：<span>18380448313</span></p>
                            </div>
                            <div class="col-md-12 col-xs-12">
                                <p class="small">QQ群：<span>124798656677</span></p>
                            </div>
                            <div class="col-md-12 col-xs-12">
                                <p class="small">微信公众号：<span>matetrip</span></p>
                                <div class="barcode">
                                    <img src="../img/10.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="other-link">

        </div>
    </div>
</div>
</body>
</html>