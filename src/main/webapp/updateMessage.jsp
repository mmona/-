<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>${result}
<html>
<head>
    <title>资讯编辑</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form class="form-horizontal" action="addMessage" method="post">
    <input type="hidden" name="message.mid" value="${message.mid}">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="message.title" value="${message.title}">
        </div>
    </div>
    <div class="form-group">
        <label for="content" class="col-sm-2 control-label">内容</label>
        <div class="col-sm-10">
            <input class="form-control" id="content" rows="3" name="message.content" value="${message.content}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="radio" name="message.publishType" value="求助信息" checked> 求助信息
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">立即修改信息</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
