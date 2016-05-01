<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<head>
    <meta charset="UTF-8">
    <title>写攻略</title>
    <link rel="stylesheet" href="/store/css/plug-css/bootstrap.min.css">
	<link rel="stylesheet" href="/store/css/base.css"/>
	<link rel="stylesheet" href="/store/css/header.css">
    <link rel="stylesheet" href="/store/css/writeStrategy.css">
    <script src="/store/js/jquery-1.11.2.js"></script>
    <script src="/store/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/store/myjs/global.js"></script>

	
</head>
<body>
<jsp:include page="header.jsp"/>

<%-- <div class="errorMessage">
	${requestScope.uploadMessage }
</div>
<form id="form1" name="form1" method="post" action="/store/UploadServlet" enctype="multipart/form-data">
<p align="center"> 请您选择需要上传的文件</p>

 <table border="0" align="center"> 
 
  <tr>
   <td>攻略标题：</td>
   <td>
    <input name="title" type="text" id="title" size="20" ></td>
  </tr>   
  <tr>
   <td>上传文件：</td>
   <td><input name="file" type="file" size="20" ></td>
  </tr>    
  
   <tr>
 <td>	攻略标正文:</td>
 	<td>
 	<textArea name="text" form="form1" class="strategy-write-title" ></textArea>
 	</td>
 	</tr>
  <tr>   
   <td></td><td>
    <input type="submit" name="submit" value="提交" >
    <input type="reset" name="reset" value="重置" >
   </td>
  </tr>
 </table>
</form> --%>

<div class="errorMessage">
	${requestScope.uploadMessage }
</div>
<form id="form1" name="form1" method="post" action="/store/UploadServlet" enctype="multipart/form-data">
<div class="writeStrategy">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="strategy-write-bg">
		<div class="strategy-head-photo">
			<div class="upload-head-photo">
				<input class="head-photo" name="file" type="file" size="20" accept="image/jpeg,image/gif,image/png">
			</div>
			<div class="tip">
				<p>请设置游记头图</p>
				<p>图片建议选择高清大图，如相机原图</p>
			</div>
		</div>
		<div class="strategy-title">
			<input class="title" name="title" type="text" id="title" size="20" placeholder="填写游记标题">
		</div>
	</div>
	<div class="strategy-content">
		<textArea name="text" form="form1" class="strategy-write-content" placeholder="给自己的旅行来一次新鲜记录吧~"></textArea>
	</div>
	<div class="save-or-cancel">
		<input class="btn btn-success" type="submit" name="submit" value="提交" >
    	<input class="btn btn-danger" type="reset" name="reset" value="重置" >
	</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>