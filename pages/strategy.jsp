<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
<link rel="stylesheet" href="../css/base.css"/>
<link rel="stylesheet" href="../css/strategy.css">
<script src="../js/jquery-1.11.2.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../myjs/global.js"></script>
<!--<script src="../myjs/index.js"></script>-->


</head>
<body>

	<div class="strategy">
		<div class="container">
			<div class="row">
				
				<div class="col-md-10">
                    <div class="pull-right">
                        <a class="btn btn-write" href="writeStrategy.html">我也要来写游记</a>
                    </div>
                </div>
				<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2"><!--内容部分都用这个尺寸-->
						<c:forEach var="gonglue" items="${requestScope.gonglues }">
                        <!--one strategy start-->
                        <div class="col-md-3 col-sm-6 col-xs-12 one-strategy-show">
                            <div class="one-strategy-intro">
                                <a href="strategyDetail.html">
                                    <img class="strategy-object" src="/store/${gonglue.image_path }"
                                         alt="">
                                </a>
                                <div class="strategy-title"><a href="strategyDetail.html" title="${gonglue.title}">${gonglue.title}</a></div>
                            </div>
                        </div><!--one strategy end-->
						</c:forEach>
                </div>






				

					
		
			</div>
		</div>
	</div>
</body>
</html>