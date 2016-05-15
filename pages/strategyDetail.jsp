<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>strategy详细页面</title>
    <link rel="stylesheet" href="../css/plug-css/bootstrap.min.css">
	 <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/strategyDetail.css">
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../myjs/global.js"></script>
    <script src="../myjs/singleStrategy.js"></script>

	
</head>
<body>
    <div class="singStrategy">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                    <p class="strategy-title">${requestScope.gonglue.title }</p>
                    <p class="strategy-small-title">本文来自：<span class="strategy-author">${requestScope.gonglue.author }</span><span class="strategy-time">${requestScope.gonglue.date }</span></p>
                    <p class="strategy-more"><a href="strategy.jsp">>>更多精选攻略</a></p>
                    <div class="strategy-photo-header">
                    	<img src="/store/${requestScope.gonglue.image_path }"/>
                    </div>
                    <div class="strategy-content">
                        <p class="strategy-text">
             ${requestScope.gonglue.text }  
                    
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>