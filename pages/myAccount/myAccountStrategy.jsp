<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>part: myaccount myStrategy</title>
</head>
<body>
	<!-- 我的游记   start -->
	
	
					<div class="myStrategy">
						<p class="myAccount-title">我的游记</p>
						<div class="myStrategy-detail">
							<table class="strategy-detail-table table table-striped">
								<thead>
									<tr>
										<th>发表日期</th>
										<th>标题</th>
										<th>点赞</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								
								<c:forEach var="item" items="${requestScope.gonglues }">
									<tr>
										<td>${item.date }</td>
										<td><a href="#">${item.title }</a></td>
										<td>2</td>
										<td><a class="delete" href="#" onclick="delStrategy('${item.id }')">删除</a></td>
									</tr>
								</c:forEach>
									
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
						</div>
					</div><!-- 我的游记   end -->
</body>
</html>