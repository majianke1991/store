<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>旅行分享会</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
<link rel="stylesheet" href="../css/base.css"/>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/travelSharing.css"/>
<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../myjs/global.js"></script>
<script type="text/javascript" src="../myjs/travelSharing.js"></script>



</head>
<body>
	<jsp:include page="/pages/header.jsp"/>
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div id="travelSharing">
					<div class="row">
							<!--left start-->
							<div class="col-md-10 ">
							<c:forEach var="share" items="${requestScope.shares }">
                 <!--one travel sharing party start-->
								<article class="one-sharing-party article clearfix">
									<h4>
										<a href="sharingDetail.jsp?sid=${share.value.id }" target="_blank"
										   title="">${share.value.zhuti }</a>
									</h4>
									<div class="img">

											<a href="sharingDetail.jsp?sid=${share.value.id }"
											   target="_blank">
												<img src="${share.value.image_path }"
													 alt="">
											</a>

									</div>
									<p class="brief">
                                    <span class="text-length-limit">
                                    
                                    <br>
                                    ${share.value.description }
                                </span>
										<a href="sharingDetail.jsp?sid=${share.value.id }"
										   target="_blank">[详情]</a>
									</p>
									<ul class="info">
										<li>${share.value.date }</li>
										<li>${share.value.place }</li>
									</ul>
								</article><!--one travel sharing party end-->
						</c:forEach>
						</div>
						<!--left end-->





						<!--right start-->

							<div class="sharing-img-right col-md-2 hidden-sm hidden-xs">
								<ul class="sharing-img-one">
									<li class="one-img"><img src="../img/ts1.jpeg" alt="click to zoom"/></li>
									<li class="one-img"><img src="../img/ts2.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts3.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts4.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts5.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts6.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts7.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts8.jpeg" alt=""/></li>
									<li class="one-img"><img src="../img/ts9.jpeg" alt=""/></li>
								</ul>
								<div class="btn-direction btn-up"> < </div>
								<div class="btn-direction btn-down">  < </div>
								<div class="hover-center up-center"></div>
								<div class="hover-center down-center"></div>

							</div>





						<!--right end-->

					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>