<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>matetrip index</title>
<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
<link rel="stylesheet" href="../css/base.css">
<link rel="stylesheet" href="../css/index.css">
<script src="../js/jquery-1.11.2.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../myjs/global.js"></script>
<script src="../myjs/index.js"></script>
</head>
<body>
	<!--head nav-->
	<jsp:include page="/pages/header.jsp" />


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
		</div>
		<!--carousel end-->

		<div id="intro">
			<div class="container">
				<div class="row">
					<div
						class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2">
						<!-- 内容部分都用这个尺寸 -->
						<h2 class="part-title">关于校园侣行</h2>

						<p class="small">Do you have a specific question, comment or
							inquiry? Don’t keep it to yourself. Tell us what it is and we’ll
							show you how to get the answer as quickly as possible.Tell us
							what it is and we’ll show you how to get the answer as quickly as
							possible.Tell us what it is and we’ll show you how to get the
							answer as quickly as possible.Tell us what it is and we’ll show
							you how to get the answer as quickly as possible.Tell us what it
							is and we’ll show you how to get the answer as quickly as
							possible.Tell us what it is and we’ll show you how to get the
							answer as quickly as possible.Tell us what it is and we’ll show
							you how to get the answer as quickly as possible.</p>
					</div>
				</div>
			</div>
		</div>


		<!-- need to be replace  最多展示6个(离现在时间最近的四个) -->
		<div id="activity-recent">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-xs-8 col-xs-offset-2">
						<!--内容部分都用这个尺寸-->
						<h2 class="part-title">园园的活动</h2>
						<!--one activity start-->

						<c:choose>
							<c:when test="${! empty requestScope.hdlist }">
								<c:forEach var="hd" items="${requestScope.hdlist }">

									<div class="row one-activity">
										<div class="col-md-4 activity-imgLeft">
											<div class="activity-img">
												<img src="../${hd.image_path }" alt="">
												<div class="activity-isOpen-mark">未开展</div>
												<a class="activity-theme" href="activityDetail.jsp?hId=${hd.id }" target="_blank">${hd.zhuti }</a>
											</div>
										</div>
										<div class="col-md-8">
											<div class="activity-detail">
												<p class="activity-time">
													活动时间：<span>${hd.from_date } & ${hd.end_date }</span>
												</p>

												<p class="activity-budget">
													活动预算：<span>${hd.esltimate }</span>元
												</p>

												<p class="activity-explain">
													<span class="text-length-limit"> ${hd.description} </span>
													<a href="activityDetail.jsp?hId=${hd.id }" target="_blank">[详情]</a>
												</p>
											</div>
										</div>
									</div>
									<!--one activity end-->

								</c:forEach>

								<div class="showMore">
									<a class="pull-right" href="activity.jsp">查看更多出行活动》》</a>
								</div>

							</c:when>


							<c:otherwise>
								<!-- if there is no activity, show like this-->
								<div class="activity-no-item">暂无出行活动，还请继续关注园园哦...</div>
							</c:otherwise>
						</c:choose>

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

							<c:choose>
								<c:when test="${! empty requestScope.gllist }">
									<c:forEach var="gonglue" items="${requestScope.gllist }">

										<div class="col-md-5 col-xs-12 one-strategy">
									

											<div class="thumbnail">
												<img src="../${gonglue.image_path }" alt="通用的占位符缩略图">
											</div>
											<div class="caption">
												<h3>
													分享者：<span>${gonglue.author}</span>
												</h3>

												<p>
													<a href="#">${gonglue.title}</a>
												</p>
											</div>
										</div>
									</c:forEach>
									<div class="clearfix visible-md-block visible-lg-block visible-sm-block">
										<div class="col-md-12 showMore-strategy">
											<a class="pull-right" href="strategy.jsp">查看更多攻略》》</a>
										</div>
										</div>
								</c:when>
								<c:otherwise>
									<!-- if there is no strategy, show like this-->
									<div class="col-md-12 activity-no-item">
										暂无友友发布攻略<a href="writeStrategy.jsp">我去写攻略》》</a>
									</div>

								</c:otherwise>
							</c:choose>

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
						
		<c:choose>
			<c:when test="${! empty requestScope.sharelist }">
				<c:forEach var="share" items="${requestScope.sharelist }">
						<div class="row one-sharing-party">
							<div class="col-md-10 sharing-party-imgLeft">
								<article class="article clearfix">
									<h4>
										<a href="sharingDetail.jsp?sid=${share.id }" target="_blank" title="">${share.zhuti }</a>
									</h4>
									<ul class="img">
										<li><a href="" target="_blank"> 
										<img	src="../${share.image_path }" alt="">
										</a>
										</li>
										
									</ul>
									<p class="brief">
										<span class="text-length-limit">
											${share.description } </span> <a
											href="sharingDetail.jsp?sid=${share.id }" target="_blank">[详情]</a>
									</p>
									<ul class="info">
										<li>${share.date }</li>
										<li>${share.place}</li>
									</ul>
								</article>
							</div>
						</div>
						<!--one travel sharing party end-->
					</c:forEach>
						<div class="col-md-12 showMore-strategy">
							<a class="pull-right" href="travelSharing.html">查看更多旅行分享会》》</a>
						</div>
				</c:when>


				<c:otherwise>
						<!-- if there is no travelSharing, show like this-->
						<div class="col-md-12 activity-no-item">暂未举办分享会哦，请友友们耐心等待.</div>
					
				</c:otherwise>		
		</c:choose>
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
									<a class="media-left" href="#"> <img class="media-object"
										src="../img/5.large.jpg" alt="媒体对象">
									</a>

									<div class="media-body media-middle">
										<h4 class="media-heading">陈导</h4>

										<p class="small">越努力，越幸运</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="media">
									<a class="media-left" href="#"> <img class="media-object"
										src="../img/5.large.jpg" alt="媒体对象">
									</a>

									<div class="media-body media-middle">
										<h4 class="media-heading">陈导</h4>

										<p class="small">越努力，越幸运</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="media">
									<a class="media-left" href="#"> <img class="media-object"
										src="../img/5.large.jpg" alt="媒体对象">
									</a>

									<div class="media-body media-middle">
										<h4 class="media-heading">陈导</h4>

										<p class="small">越努力，越幸运</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="media">
									<a class="media-left" href="#"> <img class="media-object"
										src="../img/5.large.jpg" alt="媒体对象">
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
								<p class="small">
									联系人：<span>唐静</span>
								</p>
							</div>
							<div class="col-md-12 col-xs-12">
								<p class="small">
									联系方式：<span>18380448313</span>
								</p>
							</div>
							<div class="col-md-12 col-xs-12">
								<p class="small">
									QQ群：<span>124798656677</span>
								</p>
							</div>
							<div class="col-md-12 col-xs-12">
								<p class="small">
									微信公众号：<span>matetrip</span>
								</p>

								<div class="barcode">
									<img src="../img/10.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="other-link"></div>
		<div id="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 text-center">
						<ul class="text-center">
							<li><a href="">关于我们</a></li>
							<li>CopyRight@2016 唐静毕业设计</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>