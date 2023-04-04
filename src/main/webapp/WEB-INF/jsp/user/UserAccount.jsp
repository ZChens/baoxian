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
    <title>我的账户</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<style>
    .list-group{
        width: 210px;
        height: 1000px;
    }
    /*.left-menu{*/
    /*    position: fixed;*/
    /*    width: 200px;*/
    /*    height: 2000px;*/
    /*    float: left;*/
    /*    text-align: center;*/
    /*    border: 1px solid #0C0C0C;*/
    /*}*/
    /*.left-menu a{*/
    /*    display:block;*/
    /*    width: 200px;*/
    /*    height: 70px;*/
    /*    padding-top: 20px;*/
    /*    text-decoration: none;*/
    /*    border: 1px solid #0C0C0C;*/
    /*    line-height: 30px;*/
    /*    font-size: 20px;*/
    /*    font-weight: bold;*/
    /*}*/
    *{
        padding: 0;
        margin: 0;
    }
    body{
        overflow:hidden;
    }
    .left-menu{
        position: relative;
        width: 100vw;
    }
    #checkbox{
        display: none;
    }
    .left-menu label{
        position: absolute;
        top: 0;
        left: 200px;
        width: 100%;
        height: 43px;
        font-size: 30px;
        color: #5a738e;
        background-color: #ededed;
        padding-left: 20px;
        border: 1px solid #d9dee4;
        cursor: pointer;
    }
    .left-menu ul{
        list-style: none;
        width: 200px;
        height: 100vh;
        background-color: #2a3f54;
        overflow: hidden;
    }
    .left-menu ul li{
        height: 70px;
        margin-bottom: 10px;
    }
    .left-menu ul .he1{
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 10px;
    }
    .left-menu ul .he1 span{
        color: #fff;
        white-space: nowrap;
        padding-left: 10px;
        display: block;
    }

    .left-menu ul li a{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        width: 100%;
        height: 100%;
        color: #d1d1d1;
        text-decoration: none;
    }
    .left-menu ul li a span{
        font-size: 12px;
    }
    .left-menu ul li a:hover{
        color: #fff;
        background-color: #35495d;
    }
    .bo{
        position: absolute;
        left: 800px;
        top: 100px;
    }
    .bo .table-bordered{
        width: 400px;
        height: 600px;
    }
    .bo .table-bordered tr {
        width: 200px;
        height: 40px;
        text-align: center;
    }
    .bo .table-bordered tr th{
        height: 40px;
        text-align: center;
        padding-top: 12%;
    }
    .bo .table-bordered tr td{
        width: 200px;
        height: 40px;
        text-align: center;
        padding-top: 12%;
    }
</style>
<body>
<div class="left-menu">
    <input type="checkbox" id="checkbox">
    <label for="checkbox">&nbsp;&nbsp;欢&nbsp;&nbsp;&nbsp;&nbsp;迎&nbsp;&nbsp;&nbsp;&nbsp;使&nbsp;&nbsp;&nbsp;&nbsp;用&nbsp;&nbsp;&nbsp;&nbsp;保&nbsp;&nbsp;&nbsp;&nbsp;险&nbsp;&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;统</label>
    <ul>
        <li class="he1"><img style=" width: 50px;height: 50px;border-radius: 50%;" src="${pageContext.request.contextPath}/img/sheild.jpg" alt=""><span>欢迎您！${sessionScope.user.username}</span></li>
        <li><a href="${pageContext.request.contextPath}/user/gouseraccount.action" ><span>个人信息</span></a></li>
        <li><a href="#" ><span>修改密码</span></a></li>
        <li><a href="${pageContext.request.contextPath}/insureinf/SelectInsureById.action?userid=${sessionScope.user.userid}" ><span>我的保险</span></a></li>
        <li><a href="${pageContext.request.contextPath}/payment/SelectPayById.action?userid=${sessionScope.user.userid}" ><span>我的赔付</span></a></li>
        <li><a href="#" ><span>退出</span></a></li>
    </ul>

</div>

<div class="bo">
    <table class="table table-bordered">
        <tr>
            <th>用户名</th><td>${sessionScope.user.username}</td>
        </tr>
        <tr>
            <th>性别</th><td>${sessionScope.user.sex}</td>
        </tr>
        <tr>
            <th>等级</th><td>${sessionScope.user.level}</td>
        </tr>
        <tr>
            <th>电话</th><td>${sessionScope.user.phone}</td>
        </tr>
        <tr>
            <th>邮箱</th><td>${sessionScope.user.email}</td>
        </tr>
    </table>
    <button type="button" class="btn btn-default">修改</button>
</div>

</body>
</html>
