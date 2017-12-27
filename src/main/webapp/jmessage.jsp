<%-- <%@ page import="com.itron.model.User" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%-- <%
    User user= (User)request.getSession().getAttribute("username");
% --%>>
<%-- <c:set var="user" value="<%=user%>"/> --%>
<!DOCTYPE html>
<html xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>求助信息管理</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/payment.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.min.js"></script>
<script language="JavaScript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/vue.js"></script>
    <link href="css/jquery.pagination.css" rel="stylesheet" />
    <script src="js/mricode.pagination.js"></script>
</head>
<body>
<div class="container" id="app">

<div class="tiptitle"><h1 >捐助信息管理</h1></div>

  
<div class="row" >
  <div class="col-md-4">

    <div class="input-group">

      <input type="text" class="form-control" id="title" placeholder="输入标题">
      <span class="input-group-btn">
        <button class="btn btn-default btn-color" type="button" v-on:click="search(this)">查询</button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->

<table class="table table-hover table-bordered" id="table">
<thead>
<th>序号</th>
<th>标题</th>
<th>内容</th>
<th>类别</th>
<th>发布人</th>
<th>状态</th>
<th>发布时间</th>
<th>操作</th>
</thead>
<tbody>
		<tr v-for="todo in todos">
		<td><input type="checkbox" id="check" value=""></td>
		<td>{{todo.title}}</td>
		<td>{{todo.content}}</td>
		<td>{{todo.publishType}}</td>
		<td>{{todo.publisher}}</td>
            <td v-if="todo.status">已发布</td>
            <td v-else>已捐助</td></td>
            <td>{{todo.publishTime}}</td>
            <c:if test="${user.userType=='1'}">
        <td><a href="#" v-on:click="del(todo.mid)">删除</a>
            <a v-bind:href="'updateMessage?mid='+todo.mid">修改</a>
        </td>
            </c:if>
	</tr>
</tbody>

</table>

</div>
<div id="page" class="m-pagination" style="margin-left: 80px"></div>
<script type="text/javascript">
    var app = new Vue({
        el: '#app',
        data: {
            todos: [
                { text: '学习 JavaScript' },
                { text: '学习 Vue' },
                { text: '整个牛项目' }
            ]
        },
        // 在 `methods` 对象中定义方法
        methods: {
            del: function (uid) {

                $.get( "deleteMessage?mid="+uid, function( data ) {
                    location.reload();
                });
            },
            search:function(hhh){

                var title=$('#title').val();
                search(title);
            }
        }
    })
/*    $(document).ready(function(){
        $.get( "queryMessageList", function( data ) {
            data= JSON.parse(data);
            app.todos=data;
        });
    });*/
   function  search(title){
       debugger
       $.get( "queryMessageList?message.title="+title, function( data ) {
           data= JSON.parse(data);
           app.todos=data.list;
       });
   }
    $("#page").pagination({
        pageSize: 10,
        remote: {
            url: 'queryMessageList',
            success: function (data) {
                debugger
                app.todos=data.list;
            },
            totalName:'total'
        }
    });
</script>

</body>
</html>