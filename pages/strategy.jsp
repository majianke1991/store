<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet"
	href="../../bootstrap-3.3.5/dist/css/bootstrap.min.css">
<link rel="stylesheet/less" href="../css/strategy.css">
<script src="../js/jquery-1.11.2.js"></script>
<script src="../../bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
<!--<script src="../myjs/index.js"></script>-->
</head>
<body>

	<div class="strategy">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2">
					<!--内容部分都用这个尺寸-->
					<div class="row">
						<!---->
						<div class="col-lg-12 col-md-12 col-xs-12">
							<a class="pull-right" href="writeStrategy.jsp">我也要写游记</a>
						</div>

						<c:forEach var="gonglue" items="${requestScope.gonglues }">
							<div class="col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-xs-12 one-strategy-show">
								<div class="one-strategy-intro">
									<a href="#"> <img class="strategy-object"
										src="/store/${gonglue.image_path }" alt="">
									</a>
									<div class="strategy-title">
										<a href="singleStrategy.html">${gonglue.title}</a>
									</div>
									<div class="strategy-other">
										<p class="good">
											<a class="good-number" href="">赞</a>[<span>12</span>] <a
												class="btn  pull-right to-see" href="singleStrategy.html">我去看看>></a>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>