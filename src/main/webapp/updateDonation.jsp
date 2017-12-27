<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>${result}
<html>
<head>
    <title>捐款跟踪</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form class="form-horizontal" action="addDonation" method="post">
    <input type="hidden" name="donation.id" value="${donation.id}">
    <div class="form-group">
        <label for="donationType" class="col-sm-2 control-label">捐款类型</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="donationType" name="donation.donationType" value="${donation.id}">
        </div>
    </div>
    <div class="form-group">
        <label for="donationMoney" class="col-sm-2 control-label">捐款金额</label>
        <div class="col-sm-10">
            <input class="form-control" id="donationMoney" type="number" name="donation.donationMoney" value="${donation.donationMoney}">
        </div>
    </div>
    <div class="form-group">
        <label for="donationUser" class="col-sm-2 control-label">捐款人</label>
        <div class="col-sm-10">
            <input class="form-control" id="donationUser"  name="donation.donationUser" value="${donation.donationUser}">
        </div>
    </div>
    <div class="form-group">
        <label for="donationReceiver" class="col-sm-2 control-label">收款人</label>
        <div class="col-sm-10">
            <input class="form-control" id="donationReceiver"  name="donation.donationReceiver" value="${donation.donationReceiver}">
        </div>
    </div>
    <div class="form-group">
        <label for="donationTime" class="col-sm-2 control-label">捐款时间</label>
        <div class="col-sm-10">
            <input  id="donationTime"  type="date" name="donation.donationTime" value="${donation.donationTime}">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">立即发布信息</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
