<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>创建活动</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../bootstrap-3.3.5/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/createSharing.css"/>
    <script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="../../bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../myjs/global.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <p class="create-active-title">创建分享会活动</p>
        </div>
        <div class="col-md-10 col-md-offset-1">
            <div class="createActivity">
                <div class="create-activity-back"><a class="btn btn-primary pull-right create-activity-back-btn" href="#">返回</a></div>
                <ul class="create-activity-datail clearfix">
                    <li><strong>分享会主题：</strong><input type="text" value="" required="required"/></li>
                    <li>
                        <strong>分享会状态：</strong>
                        <input type="radio" name="sex" checked>已开展
                        <input type="radio" name="sex">未开展
                    </li>
                    <li><strong>地点：</strong><input type="text" value="" required="required"/></li>
                    <li><strong>分享会时间：</strong>
                        <input type="text" value="2014/03/15 05:06" class="datetimepicker"/>
                    </li>
                    <li><strong>主题图片：</strong><div class="upload-theme-image"><input type="file" accept="image/jpeg,image/gif,image/png">选择文件</div></li>
                    <li class="create-activity-content">
                        <strong>活动说明：</strong>
                        <textarea></textarea>
                    </li>
                    <li>
                        <button class="btn btn-primary">保存</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>