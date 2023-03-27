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
    <title>管理用户列表</title>
</head>
<body>
<div class="select">
    <form action="${pageContext.request.contextPath}/user/AllUserList.action" method="get">
        客户:<input type="text" name="username" value="${username}" placeholder="请输入业务员姓名">
<%--        身份:<input type="text" name="level" value="${level}" placeholder="请输入身份">--%>
        <input type="submit">
    </form>
</div>
<form>
    <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>客户姓名</th>
            <th>性别</th>
            <th>手机号</th>
            <th>身份权限</th>
        </tr>
        <tbody>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.userid}</td>
                <td>${user.username}</td>
                <td>${user.sex}</td>
                <td>${user.phone}</td>
                <td>${user.level}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<c:if test="${nowPage==1}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=1&username=${username}" role="button">首页</a>
</c:if>
<c:if test="${nowPage!=1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=1&username=${username}&" role="button">首页</a>
</c:if>
<c:if test="${nowPage>1}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${nowPage-1}&username=${username}" role="button">上一页</a>
</c:if>
<c:forEach var="i" begin="1" end="${total}" step="1">
    <c:if test="${i == nowPage}">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${i}&username=${username}" role="button">${i}</a>
    </c:if>
    <c:if test="${i != nowPage}">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${i}&username=${username}" role="button">${i}</a>
    </c:if>
</c:forEach>
<c:if test="${nowPage<total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${nowPage+1}&username=${username}" role="button">下一页</a>
</c:if>
<c:if test="${nowPage==total}">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${total}&username=${username}" role="button">末页</a>
</c:if>
<c:if test="${nowPage!=total}">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/user/AllUserList.action?pageNum=${total}&username=${username}" role="button">末页</a>
</c:if>
</body>
</html>
