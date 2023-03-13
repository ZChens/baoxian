<%--
  Created by IntelliJ IDEA.
  User: 18346
  Date: 2023/2/15
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adduser.css">
<head>
    <title>用户注册页面</title>
</head>
<body background="/img/adduserbackground.jpg">

<form class="Form" action="${pageContext.request.contextPath}/user/adduser.action" method="post">
    <div class="box">
        <h2 style="color: aliceblue;">欢迎注册</h2>
        <br>
        <div class="input-box">
            <label>用户名</label>
            <input type="text" name="username" required="true" placeholder="请输入您的用户名" >
        </div>
        <div class="input-box">
            <label>密码</label>
            <input type="password" name="password" required="true" placeholder="密码长度建议在10~15">
        </div>
        <div class="p" style="color: aliceblue;">
            <label >性别:&nbsp;&nbsp;</label>
            <input type="radio" name="sex" value="男" checked="true">男
            <input type="radio" name="sex" value="女" >女<br><br>
        </div>
        <div class="input-box">
            <label>手机号</label>
            <input type="text" name="phone" required="true" placeholder="请输入您的手机号">
        </div>
        <div class="input-box">
            <label>邮箱</label>
            <input type="text" name="email"  placeholder="选填项">
        </div>
        <div class="btn-box">
            <div>
                <button>注册</button><br>
                <!-- <span id="m">${a}</span>
                     -->
            </div>
        </div>
    </div>
</form>


</body>
</html>
