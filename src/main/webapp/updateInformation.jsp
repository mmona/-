<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>${result}
<html>
<head>
    <title>资讯编辑</title>
</head>
<body>
<div class="container">
　　<form action="fileupload" method="post" enctype="multipart/form-data">
    　　
    <input type="hidden" name="fileFileName"><br>
    <input type="hidden" name="fileContentType">
    <input type="hidden" name="information.infoId" value="${information.infoId}">
    <div>
    <input name="information.theme" type="text" placeholder="主题" value="${information.theme}">
    </div>
    <div>
    <input name="information.content" type="text" placeholder="内容" value="${information.content}">
    </div>
  <%--  上传图片: <input type="file" name="file"><br>--%>
    <div>
     <img name="upload"
          src="GetPhoto?imgPath=${information.imgPath}" width="128"
          height="128" />
    </div>
    <input type="submit" value="submit">
</form>
</div>
</body>
</html>
