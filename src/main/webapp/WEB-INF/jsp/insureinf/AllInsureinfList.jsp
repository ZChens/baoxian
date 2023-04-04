<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单列表</title>
</head>
<body>
<div class="select">
    <form action="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action" method="get">
        保险名称:<input type="text" name="insurancename" value="${insurancename}" placeholder="请输入保险名称">
        客户姓名:<input type="text" name="username" value="${username}" placeholder="请输入客户姓名">
        <input type="submit">
    </form>
</div>
<form>
    <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>保险名称</th>
            <th>保险类型</th>
            <th>客户</th>
            <th>审核状态</th>
            <th>审核留言</th>
            <th>支付状态</th>
            <th>生效时间</th>
            <th>结束时间</th>
            <th>最高赔偿</th>
            <th>最低赔偿</th>
            <th>保险状态</th>

        </tr>
        <tbody>
        <c:forEach items="${list}" var="insureinf">
            <tr>
                <td>${insureinf.insureinfid}</td>
                <td>${insureinf.insurancename}</td>
                <td>${insureinf.insurancetype}</td>
                <td>${insureinf.username}</td>
                <td>${insureinf.checkstate}</td>
                <td>${insureinf.checkmessage}</td>
                <td>${insureinf.paystate}</td>
                <td>${insureinf.starttime}</td>
                <td>${insureinf.endtime}</td>
                <td>${insureinf.minpay}</td>
                <td>${insureinf.maxpay}</td>
                <td>${insureinf.finalstate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<c:if test="${nowPage==1}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=1&insurancename=${insurancename}&username=${username}" role="button">首页</a>
</c:if>
<c:if test="${nowPage!=1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=1&insurancename=${insurancename}&username=${username}" role="button">首页</a>
</c:if>
<c:if test="${nowPage>1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${nowPage-1}&insurancename=${insurancename}&username=${username}" role="button">上一页</a>
</c:if>
<c:forEach var="i" begin="1" end="${total}" step="1">
    <c:if test="${i == nowPage}">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${i}&insurancename=${insurancename}&username=${username}" role="button">${i}</a>
    </c:if>
    <c:if test="${i != nowPage}">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${i}&insurancename=${insurancename}&username=${username}" role="button">${i}</a>
    </c:if>
</c:forEach>
<c:if test="${nowPage<total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${nowPage+1}&insurancename=${insurancename}&username=${username}" role="button">下一页</a>
</c:if>
<c:if test="${nowPage==total}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${total}&insurancename=${insurancename}&username=${username}" role="button">末页</a>
</c:if>
<c:if test="${nowPage!=total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action?pageNum=${total}&insurancename=${insurancename}&username=${username}" role="button">末页</a>
</c:if>
</body>
</html>
