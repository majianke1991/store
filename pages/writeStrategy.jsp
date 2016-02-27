<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>åæ¸¸è®°é¡µé¢</title>
    <link rel="stylesheet" href="../../bootstrap-3.3.5/dist/css/bootstrap.min.css">
    <link rel="stylesheet/less" href="../css/writeStrategy.less">
    <script src="../js/less.js"></script>
    <script src="../js/jquery-1.11.2.js"></script>
    <script src="../../bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="writeStrategy">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-8 col-xs-offset-2">
                    <div class="title">
                        <textArea class="strategy-write-title" ></textArea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>using commons Upload to upload file </title>
</head>
<style>
* { font-family: "宋体"; font-size: 14px }
</style>
<body>
<p align="center"> 请您选择需要上传的文件</p>
<form id="form1" name="form1" method="post" action="/store/UploadServlet" enctype="multipart/form-data">
 <table border="0" align="center"> 
  <tr>
   <td>上传人：</td>
   <td>
    <input name="name" type="text" id="name" size="20" ></td>
  </tr>   
  <tr>
   <td>上传文件：</td>
   <td><input name="file" type="file" size="20" ></td>
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