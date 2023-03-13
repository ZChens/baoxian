<%--
  Created by IntelliJ IDEA.
  User: 18346
  Date: 2023/2/19
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理用户列表</title>
</head>
<style>
    table{
        width: 600px;
        margin-top: 10px;
    }
    table.hovertable{
        font-family: verdana,arial,sans-serif;
        font-size: 12px;
        color: #333333;
        border-width: 1px;
        border-color: #999999;
        border-collapse: collapse;
    }
    table.hovertable th{
        background-color: rgb(210, 210, 210);
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
    table.hovertable tr{
        background-color: #FFFFFF;
    }
    table.hovertable td{
        text-align: center;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #a9c6c9;
    }
    .List{
        position:absolute;
        top:90px;
        left:200px;
    }

</style>
<body>
<form>
        <table class="table table-bordered">
            <tr>
                <th>用户名</th>
                <th>性别</th>
                <th>电话</th>
                <th>身份</th>
            </tr>
            <tbody>
            <c:forEach items="${userList}" var="user">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.sex}</td>
                    <td>${user.phone}</td>
                    <td>${user.level}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</form>

</body>
</html>
