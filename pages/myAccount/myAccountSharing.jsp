<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<!-- 旅行分享会   start -->
<div class="activity-manage">
    <p class="myAccount-title">旅行分享会</p>
    <p class="pull-right"><a href="createSharing.html" class="btn btn-primary" onclick="">新建分享会</a></p>
    <div class="activity-manage-detail">
        <table class="activity-detail-table table table-striped">
            <thead>
            <tr>
                <th>分享会时间</th>
                <th>分享会主题</th>
                <th>地点</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>2012-12-10晚7:00</td>
                <td>女孩穷游世界，超级达人来袭</td>
                <td>成信院4404</td>
                <td>
                    <a href="#" class="jq-sharing-edit">编辑</a>
                    <a href="#" class="jq-sharing-delete">删除</a>
                </td>
            </tr>
            <tr>
                <td>2012-12-10晚7:00</td>
                <td>“疯在旅途，一路向西”第二期旅行分享会</td>
                <td>成信院4404</td>
                <td>
                    <a href="#" class="jq-sharing-edit">编辑</a>
                    <a href="#" class="jq-sharing-delete">删除</a>
                </td>
            </tr>

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
        <!-- 编辑： popup -->
        <div class="popup-sharing-edit hidden">
            <ul class="popup-sharing-datail">
                <li><strong>主题：</strong><input type="text" value="毕棚沟---一路向西" required="required"></li>
                <li>
                    <strong>分享会状态：</strong>
                    <input type="radio" name="sex">已开展
                    <input type="radio" name="sex" checked>未开展
                </li>
                <li><strong>举办地点：</strong><input type="text" value="成信院4017" required="required"></li>
                <li><strong>分享会时间：</strong>
                    <input type="text" value="2014/03/15 05:06" class="datetimepicker"/>
                </li>
                <li class="item-theme-image"><strong>主题图片：</strong>
                    <!-- 还没有图片 -->
                    <!-- <div class="upload-theme-image"><input type="file" accept="image/jpeg,image/gif,image/png">选择文件</div> -->
                    <!-- 已有图片 -->
                    <div class="theme-image">
                        <img src="1.jpg"/>
                        <div class="upload-theme-image"><input type="file" accept="image/jpeg,image/gif,image/png">更换图片</div>
                    </div>
                </li>
                <li class="popup-sharing-content">
                    <strong>分享会介绍：</strong>
										<textarea>本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“
										阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一 步的帮助?我们
										检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“ 阿什福德”绑定响应方政策从
										23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助? 我们检查了负载平衡器,防火墙
										在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定 响应方政策从23:24-23:48重定向所有页
										面维护。</textarea>
                </li>
                <li>
                    <button class="btn btn-primary pull-left jq-sharing-cancel">取消</button>
                    <button class="btn btn-primary pull-right jq-sharing-save">保存</button>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 旅行分享会    end -->
<script>
    $(function(){
        //日期时间插件
        $('.datetimepicker').datetimepicker();
        $('.datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

        var $div = $('.upload-theme-image');
        $('.item-theme-image .theme-image').hover(function(){
            $div.show();
        }, function(){
            $div.hide();
        });
    });

</script>
</body>
</html>