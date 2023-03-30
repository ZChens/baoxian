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

<style>
    .select form{
        position: absolute;
        top: 70px;
        left: 400px;
    }

    .fo form{
        position: absolute;
        top: 150px;
        left: 400px;
    }
    .fo form table tr th{
        text-align: center;
    }
    .fo form table tbody tr td{
        text-align: center;
    }
    .pagebu{
        position: absolute;
        top: 670px;
        left: 400px;
    }
</style>
<body>
<div class="select">
    <form class="form-inline" action="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action" method="get">
        <div class="form-group">
            <label for="intype">保险类型:</label>
            <select id="intype" name="insurancetype" type="text" class="form-control">
                <option>选择保险类型</option>
                <option>社会保险</option>
                <option>商业保险</option>
            </select>
        </div>
        <div class="form-group">
            <label for="iword">关键词:</label>
            <input type="text" class="form-control" id="iword" name="insurancename" value="${insurancename}" placeholder="请输入关键词">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
</div>
<div class="fo">
<form style="width: 50%;">
    <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>保险名称</th>
            <th>保险类型</th>
            <th>时效期</th>
            <th>价格</th>
            <th>最低赔偿</th>
            <th>最高赔偿</th>
            <th>操作</th>
        </tr>
        <tbody>
        <c:forEach items="${list}" var="insuranceinf">
            <tr>
                <td>${insuranceinf.insuranceid}</td>
                <td>${insuranceinf.insurancename}</td>
                <td>${insuranceinf.insurancetype}</td>
                <td>${insuranceinf.insuredate}</td>
                <td>${insuranceinf.money}</td>
                <td>${insuranceinf.minpay}</td>
                <td>${insuranceinf.maxpay}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/insuranceinf/SelectDetailById.action" role="Button">保险详情</a>&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/insureinf/AddInsureinf.action" role="button">购买</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
</div>
<div class="pagebu" >
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
</div>
</body>
</html>
