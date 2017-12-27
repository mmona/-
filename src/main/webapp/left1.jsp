
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%-- <c:set var="user" value="<%=user%>"/> --%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>左侧菜单</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Iconos -->
	<!-- <link href="css/font-awesome.min.css" rel="stylesheet"> -->

    <link rel="stylesheet" href="css/left1.css"  type="text/css" />

</head>

<body>
	<!-- Contenedor -->
	<ul id="accordion" class="accordion">
		<li>
			<div class="link"><i class="fa fa-paint-brush"></i>会员管理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="member.html" target="rightFrame">会员管理</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-code"></i>公益资讯<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<c:if test="${user.userType=='1'}">
				<li><a href="addInformation.html" target="rightFrame">发布资讯</a></li>
				</c:if>
				<li><a href="information.html" target="rightFrame">公益资讯</a></li>
				
			</ul>
		</li>
		<c:if test="${user.userType=='0'}">
		<li>
			<div class="link"><i class="fa fa-mobile"></i>求助信息管理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
					<li><a href="addMessage.html" target="rightFrame">发布求助信息</a></li>
					<li><a href="message.jsp" target="rightFrame">管理求助信息</a></li>
			</ul>
		</li>

		<li>
			<div class="link"><i class="fa fa-mobile"></i>捐助信息管理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="addJMessage.html" target="rightFrame">发布捐助信息</a></li>
				<li><a href="jmessage.jsp" target="rightFrame">管理捐助信息</a></li>
			</ul>
		</li>
		</c:if>
		<li>
			<div class="link"><i class="fa fa-mobile"></i>公益项目<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="addProject.html" target="rightFrame">发起公益项目</a></li>
				<li><a href="project.html" target="rightFrame">管理公益项目</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-mobile"></i>捐助跟踪<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="addDonation.html" target="rightFrame">新增捐款</a></li>
				<li><a href="Donation.html" target="rightFrame">跟踪捐款</a></li>
			</ul>
		</li>
	</ul>

  <script src='js/jquery.min.js'></script>

  <script src="js/left1.js"></script>

</body>
</html>