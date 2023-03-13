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
    <title>保险列表</title>
</head>
<body>
<div class="select">
    <form action="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action" method="get">
        保险类型:
        <select id="itype" name="insurancetype" >
            <option>选择保险类型</option>
            <option>社会保险</option>
            <option>商业保险</option>
        </select>
        <%--类型:<input type="text" name="insurancetype">--%>
        关键词:<input type="text" name="insurancename" value="${insurancename}" placeholder="请输入关键词">
        <input type="submit">
    </form>
</div>
<form>
    <table class="table table-bordered">
        <tr>
            <th>保险名称</th>
            <th>保险类型</th>
            <th>时效期</th>
            <th>价格</th>
        </tr>
        <tbody>
        <c:forEach items="${list}" var="insuranceinf">
            <tr>
                <td>${insuranceinf.insurancename}</td>
                <td>${insuranceinf.insurancetype}</td>
                <td>${insuranceinf.insuredate}</td>
                <td>${insuranceinf.money}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<c:if test="${nowPage==1}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=1&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">首页</a>
</c:if>
<c:if test="${nowPage!=1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=1&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">首页</a>
</c:if>
<c:if test="${nowPage>1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${nowPage-1}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">上一页</a>
</c:if>
<c:forEach var="i" begin="1" end="${total}" step="1">
    <c:if test="${i == nowPage}">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${i}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">${i}</a>
    </c:if>
    <c:if test="${i != nowPage}">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${i}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">${i}</a>
    </c:if>
</c:forEach>
<c:if test="${nowPage<total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${nowPage+1}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">下一页</a>
</c:if>
<c:if test="${nowPage==total}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${total}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">末页</a>
</c:if>
<c:if test="${nowPage!=total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=${total}&insurancename=${insurancename}&insurancetype=${insurancetype}" role="button">末页</a>
</c:if>
</body>
</html>
