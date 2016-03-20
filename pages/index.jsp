<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>matetrip index</title>
    <link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/index.css">
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../myjs/index.js"></script>
</head>
<body>
<!--head nav-->
	<jsp:include page="/pages/header.jsp"/>
    

<div class="ajaxPage">
    <!--carousel start-->
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
    </div><!--carousel end-->

    <div id="intro">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2">
                    <!--内容部分都用这个尺寸-->
                    <h2 class="part-title">关于校园侣行</h2>

                    <p class="small">Do you have a specific question, comment or inquiry? Don’t keep it to yourself.
                        Tell us what
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
    
    
    <!-- need to be replace  最多展示6个(离现在时间最近的四个) -->
    <div id="activity-recent">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2"><!--内容部分都用这个尺寸-->
                    <h2 class="part-title">园园的活动</h2>
                    <!--one activity start-->
                    <div class="row one-activity">
                        <div class="col-md-4 activity-imgLeft">
                            <div class="activity-img">
                                <img src="../img/5.jpg" alt="">

                                <div class="activity-isOpen-mark">未开展</div>
                                <a class="activity-theme" href="activityDetail.html">一路向西,最美路线</a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="activity-detail">
                                <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>

                                <p class="activity-budget">活动预算：<span>239</span>元</p>

                                <p class="activity-explain">
                                    <span class="text-length-limit">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                    步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                    响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?我们检查了
                                    负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定响应方政
                                    策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    </span>
                                    <a href="activityDetail.html" target="_blank">[详情]</a>
                                </p>
                            </div>
                        </div>
                    </div><!--one activity end-->
                    <!--one activity start-->
                    <div class="row one-activity">
                        <div class="col-md-4 activity-imgLeft">
                            <div class="activity-img">
                                <img src="../img/8.jpg" alt="">

                                <div class="activity-isOpen-mark">已开展</div>
                                <a class="activity-theme" href="activityDetail.html">一路向西,最美路线</a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="activity-detail">
                                <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>

                                <p class="activity-budget">活动预算：<span>259</span>元</p>

                                <p class="activity-explain">
                                    <span class="text-length-limit">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                    步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                    响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?我们检查了
                                    负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定响应方政
                                    策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    </span>
                                    <a href="activityDetail.html" target="_blank">[详情]</a>
                                </p>
                            </div>
                        </div>
                    </div><!--one activity end-->
                    <!--one activity start-->
                    <div class="row one-activity">
                        <div class="col-md-4 col-xs-12 activity-imgLeft">
                            <div class="activity-img">
                                <img src="../img/13.jpg" alt="">

                                <div class="activity-isOpen-mark">已开展</div>
                                <a class="activity-theme" href="activityDetail.html">一路向西,最美路线</a>
                            </div>
                        </div>
                        <div class="col-md-8 col-xs-12">
                            <div class="activity-detail">
                                <p class="activity-time">活动时间：<span>11/19/2015 & 11/21/2015</span></p>

                                <p class="activity-budget">活动预算：<span>259</span>元</p>

                                <p class="activity-explain">
                                    <span class="text-length-limit">
                                        本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一
                                    步的帮助?我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
                                    阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定
                                    响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?我们检查了
                                    负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定响应方政
                                    策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助?
                                    </span>
                                    <a href="activityDetail.html" target="_blank">[详情]</a>
                                </p>
                            </div>
                        </div>
                    </div><!--one activity end-->
                    
                     <div class="showMore"><a class="pull-right" href="activity.html">查看更多出行活动》》</a></div>
                    
                    
                    
                    
                    <!-- if there is no activity, show like this-->
                     <div class="activity-no-item">暂无出行活动，还请继续关注园园哦...</div>
                     
                     
                </div>
            </div>
        </div>
    </div>
    
    <!-- strategy: show 6 items at most, 按最近的时间依次排列-->
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

                        <div class="clearfix visible-md-block visible-lg-block visible-sm-block">
                        <div class="col-md-12 showMore-strategy"><a class="pull-right" href="activity.html">查看更多攻略》》</a></div>



                        <!-- if there is no strategy, show like this-->
                        <div class="col-md-12 activity-no-item">暂无友友发布攻略<a href="#">我去写攻略》》</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <!--旅行分享会: 最多展示4个， 按最近的时间依次排列-->
    <div id="travel-sharing-party">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2">
                    <h2 class="part-title">旅行分享会</h2>

                    <!--one travel sharing party start-->
                    <div class="row one-sharing-party">
                        <div class="col-md-10 sharing-party-imgLeft">
                            <article class="article clearfix">
                                <h4>
                                    <a href="sharingDetail.html" target="_blank"
                                       title="">“疯在旅途，一路向西”第二期旅行分享会</a>
                                </h4>
                                <ul class="img">
                                    <li>
                                        <a href=""
                                           target="_blank">
                                            <img src="../img/1.jpg"
                                                 alt="">
                                        </a>
                                    </li>
                                    <li><a href="../img/2.jpg"
                                           target="_blank"><img
                                            src=""
                                            alt=""></a>
                                    </li>
                                </ul>
                                <p class="brief">
                                    <span class="text-length-limit">
                                    校园侣行之“疯在旅途，一路向西”主题分享会隆重来袭啦！九寨沟、
                                    大美甘南、西藏、稻城亚丁等七站的旅途，走走停停，见证世间的大美，一场永不褪
                                    色的视觉盛宴。你们，是否准备好来一场“疯狂”的旅途？本期将带你们走进西行的神
                                    奇天堂。再者，本期主题分享会各路达人向你分享不同的出游经验，还你一个最有意
                                    义的旅行
                                </span>
                                    <a href="sharingDetail.html"
                                       target="_blank">[详情]</a>
                                </p>
                                <ul class="info">
                                    <li>2014/03/15 05:06</li>
                                    <li>成信院4405</li>
                                </ul>
                            </article>
                        </div>
                    </div><!--one travel sharing party end-->

                    <!--one travel sharing party start-->
                    <div class="row one-sharing-party">
                        <div class="col-md-10 sharing-party-imgLeft">
                            <article class="article clearfix" >
                                <h4>
                                    <a href="sharingDetail.html" target="_blank"
                                       title="">女孩穷游世界，超级达人来袭</a>
                                </h4>
                                <ul class="img">
                                    <li>
                                        <a href=""
                                           target="_blank">
                                            <img src="../img/3.jpg"
                                                 alt="">
                                        </a>
                                    </li>
                                    <li><a href=""
                                           target="_blank"><img
                                            src="../img/4.jpg"
                                            alt=""></a>
                                    </li>
                                </ul>
                                <p class="brief">
                                    <span class="text-length-limit">
                                        9月28日晚7点在4203将要召开校园侣行本学期第一次“旅行分享会”，
                                        各路达人分享旅行经验：骑行达人勇探险美之地，灵魂达人寻找旅行
                                        的意义，更有超级达人穷游世界，重磅来袭！4203，”旅行分享会“等
                                        待你的到来！给你最实用的旅行建议！
                                    </span>
                                    <a href="sharingDetail.html"
                                       target="_blank">[详情]</a>
                                </p>
                                <ul class="info">
                                    <li>2015-10-11晚7:00</li>
                                    <li>成信院4405</li>
                                </ul>
                            </article>
                        </div>
                    </div><!--one travel sharing party end-->
                    <div class="col-md-12 showMore-strategy"><a class="pull-right" href="travelSharing.html">查看更多旅行分享会》》</a></div>



                        <!-- if there is no travelSharing, show like this-->
                        <div class="col-md-12 activity-no-item">暂未举办分享会哦，请友友们耐心等待.</div>
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
    <div id="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <ul class="text-center">
                        <li>
                            <a href="">关于我们</a>
                        </li>
                        <li>
                            CopyRight@2016 唐静毕业设计
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>