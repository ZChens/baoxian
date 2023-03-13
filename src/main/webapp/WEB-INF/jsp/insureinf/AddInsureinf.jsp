<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>下订单</title>
</head>
<body>
<div >
    <div >
        <form action="${pageContext.request.contextPath}/insureinf/AddInsureinf.action" method="post">
            保险名称:<input type="text" name="insurancename"><br>
            保险类型:<select id="insurancetype" name="insurancetype">
            <option>社会保险</option>
            <option>商业保险</option>
        </select>
            <br>
            客户姓名:<input type="text" name="username"><br>
            <br>
            业务员姓名:<input type="text" name="salesmanname"><br>
            <input type="submit">
        </form>
    </div>
</div>
</body>
</html>
