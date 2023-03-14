<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<head>
    <title>main</title>
    <meta charset="UTF-8">

</head>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/userlogin.css">--%>
<%--<script type="text/css" src="${pageContext.request.contextPath}css/userlogin.css"></script>--%>
<%--<link rel="stylesheet"--%>
<%--<style type="text/css">@import url('<c:url value="/WEB-INF/css/userlogin.css">');</style>--%>
<body>
 <button type="button" class="btn btn-primary" onclick="window.location.href='/user/gouserlogin.action'">登陆</button>
 <button onclick="window.location.href='/user/goadduser.action'">注册</button>
 <button onclick="window.location.href='/user/gomain.action'">gomain</button>
 <button onclick="window.location.href='/salesman/gosalesmanlogin.action'">业务员登陆</button>
 <button onclick="window.location.href='/user/AllUserList.action'">userlist</button>
 <button onclick="window.location.href='/insureinf/goAddInsureinf.action'">goAddInsureinf</button>
 <button onclick="window.location.href='/insuranceinf/SelectInsuranceinfByAll.action'">SelectInsuranceinfByAll</button>
 <button onclick="window.location.href='/insureinf/AllInsureinfList.action'">AllInsureinfList</button>
</body>
</html>
