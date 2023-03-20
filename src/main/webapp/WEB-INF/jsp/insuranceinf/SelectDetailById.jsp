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
    <title>详情页面</title>
</head>
<body>
 <div>
     <label>保险名称：</label>${insuranceinf.insurancename}<br>
     <label>保险类型：</label>${insuranceinf.insurancetype}<br>
     <label>价格：</label>${insuranceinf.money}<br>
     <label>时效期：</label>${insuranceinf.insuredate}<br>
     <label>最低赔偿：</label>${insuranceinf.minpay}<br>
     <label>最高赔偿：</label>${insuranceinf.maxpay}<br>
     <a href="${pageContext.request.contextPath}/insuranceinf/" >（预留）购买保险</a>
 </div>
</body>
</html>
