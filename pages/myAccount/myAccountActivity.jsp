<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>part of my account: activity</title>
</head>
<body>
	<!-- 活动管理   start -->
					<div class="activity-manage">
						<p class="myAccount-title">活动管理</p>
						<p class="pull-right"><a href="/store/pages/createActivity.jsp" class="btn btn-primary" onclick="">发起活动</a></p>
						<div class="activity-manage-detail">
							<table class="activity-detail-table table table-striped">
								<thead>
									<tr>
										<th>发起时间</th>
										<th>活动主题</th>
										<th>活动状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2012-12-10</td>
										<td>毕棚沟---一路向西</td>
										<td>未开展</td>
										<td>
											<a href="#" class="activity-handle jq-activity-delete">删除</a>
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
							<!-- <div class="popup-activity-edit hidden">
								<ul class="popup-activity-datail">
									<li><strong>主题：</strong><input type="text" value="毕棚沟---一路向西" required="required"></li>
									<li>
										<strong>活动状态：</strong>
										<input type="radio" name="sex">已开展
										<input type="radio" name="sex" checked>未开展
									</li>
									<li><strong>预算(元)：</strong><input type="text" value="230" required="required"></li>
									<li><strong>活动时间：</strong>
										<input type="text" class="datetimepicker2"/>
										TO
										<input type="text" class="datetimepicker2"/>
									</li>
									<li class="item-theme-image"><strong>主题图片：</strong>
										还没有图片
										<div class="upload-theme-image"><input type="file" accept="image/jpeg,image/gif,image/png">选择文件</div>
										已有图片
										<div class="theme-image">
											<img src="1.jpg"/>
											<div class="upload-theme-image"><input type="file" accept="image/jpeg,image/gif,image/png">更换图片</div>
										</div>
									</li>
									<li class="popup-activity-content">
										<strong>活动说明：</strong>
										<textarea>本周五、周六我们检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“ 
										阿什福德”绑定响应方政策从23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一 步的帮助?我们
										检查了负载平衡器,防火墙在正常的cpu和内存。显示从负载平衡器日志,用户帐户“ 阿什福德”绑定响应方政策从
										23:24-23:48重定向所有页面维护。是正常的吗?这个案子有任何进一步的帮助? 我们检查了负载平衡器,防火墙
										在正常的cpu和内存。显示从负载平衡器日志,用户帐户“阿什福德”绑定 响应方政策从23:24-23:48重定向所有页
										面维护。</textarea>
									</li>
									<li>
										<button class="btn btn-primary pull-left jq-edit-cancel">取消</button>
										<button class="btn btn-primary pull-right jq-edit-save">保存</button>
									</li>
								</ul>
							</div> -->
						</div>
					</div>
					<!-- 活动管理   end -->
					
					
					<script>
						$('.datetimepicker2').datetimepicker({
							yearOffset:0,
							lang:'ch',
							timepicker:false,
							format:'d/m/Y',
							formatDate:'Y/m/d'

						});
						$(function(){
							var $div = $('.popup-activity-datail .item-theme-image .upload-theme-image');
							$('.popup-activity-datail .item-theme-image .theme-image').hover(function(){
								$div.show();
							}, function(){
								$div.hide();
							});
						});
					</script>
</body>
</html>