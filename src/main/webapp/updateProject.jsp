<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>${result}
<html>
<head>
    <title>资讯编辑</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form class="form-horizontal" action="addProject" method="post">
    <input type="hidden" name="project.pid" value="${project.pid}">
    <div class="form-group">
        <label for="title" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-10">
            <input class="form-control" id="title"  name="project.title" value="${project.title}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="content" class="col-sm-2 control-label">内容说明</label>
        <div class="col-sm-10">
            <input class="form-control" id="content"  name="project.content" value="${project.content}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="cost" class="col-sm-2 control-label">花费</label>
        <div class="col-sm-10">
            <input class="form-control" id="cost"  name="project.cost" value="${project.cost}"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">立即修改</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
