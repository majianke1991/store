<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<head>
    <meta charset="UTF-8">
    <title>写攻略</title>
    <link rel="stylesheet" href="../../bootstrap-3.3.5/dist/css/bootstrap.min.css">
    <link rel="stylesheet/less" href="../css/writeStrategy.less">
    <script src="../js/less.js"></script>
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../../bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="errorMessage">
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
</form>
</body>
</html>
</html>