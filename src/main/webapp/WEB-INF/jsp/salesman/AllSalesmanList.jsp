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
    <title>业务员列表</title>
</head>
<body>
<div class="select">
    <form action="${pageContext.request.contextPath}/salesman/AllSalesmanList.action" method="get">
        业务员:<input type="text" name="salesmanname" value="${salesmanname}" placeholder="请输入业务员姓名">
        身份:<input type="text" name="level" value="${level}" placeholder="请输入身份">
        <input type="submit">
    </form>
</div>
<form>
    <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>业务员姓名</th>
            <th>性别</th>
            <th>手机号</th>
            <th>身份权限</th>
        </tr>
        <tbody>
        <c:forEach items="${list}" var="salesman">
            <tr>
                <td>${salesman.salesmanid}</td>
                <td>${salesman.salesmanname}</td>
                <td>${salesman.sex}</td>
                <td>${salesman.phone}</td>
                <td>${salesman.level}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/insuranceinf/SelectDetailById.action" role="Button">保险详情</a>&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/insureinf/AddInsureinf.action" role="button">购买</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<c:if test="${nowPage==1}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=1&salesmanname=${salesmanname}&level=${level}" role="button">首页</a>
</c:if>
<c:if test="${nowPage!=1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=1&salesmanname=${salesmanname}&level=${level}" role="button">首页</a>
</c:if>
<c:if test="${nowPage>1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${nowPage-1}&salesmanname=${salesmanname}&level=${level}" role="button">上一页</a>
</c:if>
<c:forEach var="i" begin="1" end="${total}" step="1">
    <c:if test="${i == nowPage}">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${i}&salesmanname=${salesmanname}&level=${level}" role="button">${i}</a>
    </c:if>
    <c:if test="${i != nowPage}">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${i}&salesmanname=${salesmanname}&level=${level}" role="button">${i}</a>
    </c:if>
</c:forEach>
<c:if test="${nowPage<total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${nowPage+1}&salesmanname=${salesmanname}&level=${level}" role="button">下一页</a>
</c:if>
<c:if test="${nowPage==total}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${total}&salesmanname=${salesmanname}&level=${level}" role="button">末页</a>
</c:if>
<c:if test="${nowPage!=total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action?pageNum=${total}&salesmanname=${salesmanname}&level=${level}" role="button">末页</a>
</c:if>
</body>
</html>
