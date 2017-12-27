<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>${result}
<html>
<head>
    <title>资讯编辑</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="userform" action="register" >
    <input type="hidden" name="user.uid" value="${user.uid}">
    <div class="container">
        <div class="form-group">
            <label>用户名：</label>
            <input type="text" name="user.userName"  class="form-control" value="${user.userName}" required/>
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="password" name="user.password" class="form-control" value="${user.password}"  required/>
        </div>
        <div class="form-group">
            <label>年龄</label>
            <input type="number" name="user.age" class="form-control" value="${user.age}"  required/>
        </div>
        <div class="form-group">
            <label>性别</label>
            <select name="user.sex" class="form-control" >
                <option>男</option>
                <option>女</option>
            </select>
        </div>
        <div class="form-group">
            <label>职业</label>
            <input type="text" name="user.job" class="form-control" value="${user.job}" required/>
        </div>
        <div>
            <button class="btn btn-primary" onclick="register()" >修改</button>
            <button class="btn btn-primary" type="reset" >重置</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
