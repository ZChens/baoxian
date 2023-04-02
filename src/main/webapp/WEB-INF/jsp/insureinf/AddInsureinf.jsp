<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>下订单</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
    <style>
        .for1{
            position: absolute;
            left: 650px;
            top: 100px;
            border: 1px solid #0C0C0C;
            height: 400px;
            width:600px;
        }

        .for1 .table-bordered tr th{
            height: 40px;
            /*border: 1px solid #0C0C0C;*/
            text-align: center;
        }
        .for1 .table-bordered tr td{
            height: 40px;
            /*border: 1px solid #0C0C0C;*/
            text-align: center;
        }

    </style>
<body>

<div class="for1">
    <table class="table table-bordered">
        <tr>
            <th>保险名称</th><td nowrap="true">${insuranceinf.insurancename}</td>
        </tr>
        <tr>
            <th>保险类型</th><td>${insuranceinf.insurancetype}</td>
        </tr>
        <tr>
            <th>姓名</th><td>${sessionScope.user.username}</td>
        </tr>
        <tr>
            <th>时效期</th><td>${insuranceinf.insuredate}</td>
        </tr>
        <tr>
            <th>价格</th><td>${insuranceinf.money}</td>
        </tr>
        <tr>
            <th>最低赔偿</th><td>${insuranceinf.minpay}</td>
        </tr>
        <tr>
            <th>最高赔偿</th><td>${insuranceinf.maxpay}</td>
        </tr>
    </table>
    <form action="${pageContext.request.contextPath}/insureinf/AddInsureinf.action" style="padding-left: 30px" >
        <input type="text" name="insurancename" value="${insuranceinf.insurancename}" hidden>
        <input type="text" name="insurancetype" value="${insuranceinf.insurancetype}" hidden>
        <input type="text"  name="username" value="${sessionScope.user.username}" hidden>
        <input type="text" name="salesman" value="${insuranceinf.insurancetype}" hidden>
        <button type="submit" class="btn btn-default" style="width: 100px; height: 40px;z-index: 1;margin-top: 15px;margin-left: 80px "><th style="margin-top:3px;z-index: 2">确认</th></button>
    </form>
    <button onclick="window.local.href('${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action')" class="btn btn-default" style="width: 100px; height: 40px;z-index: 1;margin-top: -55px;margin-left: 380px;text-align: center; "><th style="margin-top:3px;z-index: 2">取消</th></button>
</div>
</body>
</html>
