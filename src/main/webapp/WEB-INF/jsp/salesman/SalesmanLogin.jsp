<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>业务员登录页面</title>
    <meta charset="UTF-8">

</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/salesmanlogin.css">
<%--<script type="text/css" src="${pageContext.request.contextPath}css/userlogin.css"></script>--%>
<%--<link rel="stylesheet"--%>
<%--<style type="text/css">@import url('<c:url value="/WEB-INF/css/userlogin.css">');</style>--%>
<body background="/img/salesmanloginbackground.jpg">

<form class="Form" action="/salesman/salesmanlogin.action" method="post">
    <div class="box">
        <h2 style="color: #ffffff">业务员登陆</h2>
        <br>
        <div class="input-box">
            <label>用户名</label>
            <input type="text" name="salesmanname">
        </div>
        <div class="input-box">
            <label>密码</label>
            <input type="password" name="password">
        </div>
        <div class="btn-box">
            <div>
                <button>登录</button><br>
            </div>
        </div>
    </div>
</form>



</body>
</html>
