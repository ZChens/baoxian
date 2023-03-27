<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <title>业务员欢迎页面</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>

    <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.3.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script src="${pageContext.request.contextPath}/layui_exts/excel.js"></script>

    <style>
        .o_div{
            background: url("/img/01.jpg") no-repeat;
        }
        .o_span{
            display: block;
            text-align: center;
            font-size: 20px;
            letter-spacing:8px
        }
    </style>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="">保险管理系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <%--<ul class="layui-nav left fast-add" lay-filter="">--%>
    <%--<li class="layui-nav-item">--%>
    <%--<a href="javascript:;">+新增</a>--%>
    <%--<dl class="layui-nav-child"> <!-- 二级菜单 -->--%>
    <%--<dd><a onclick=""><i class="iconfont">&#xe6a2;</i>资讯</a></dd>--%>
    <%--<dd><a onclick=""><i class="iconfont">&#xe6a8;</i>图片</a></dd>--%>
    <%--<dd><a onclick=""><i class="iconfont">&#xe6b8;</i>用户</a></dd>--%>
    <%--</dl>--%>
    <%--</li>--%>
    <%--</ul>--%>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;"><img src="http://m.zhengjinfan.cn/images/0.jpg" class="layui-nav-img">${sessionScope.ad.a_username}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a onclick="x_admin_show('切换帐号','loginOut')">切换帐号</a></dd>
                <dd><a href="/loginOut">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index"><a href="/loginOut">前台首页</a></li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>人员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/findStudent">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>个人信息</cite>

                        </a>
                    </li >

                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/user/AllUserList.action">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户列表</cite>

                        </a>
                    </li >

                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/salesman/AllSalesmanList.action">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>业务员列表</cite>

                        </a>
                    </li >

                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>保险管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>保险列表</cite>
                        </a>
                    </li >

                    <li>
                        <a _href="${pageContext.request.contextPath}/insureinf/AllInsureinfList.action">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite>
                        </a>
                    </li >
                </ul>
            </li>


            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>管理员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/findAdmin">
                            <%--点击在右侧出现动态的Tab--%>
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>管理员列表</cite>
                        </a>
                    </li >


                </ul>
            </li>


        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-tab-content" >
            <div class="layui-tab-item layui-show o_div" >
                <span class="o_span">${sessionScope.sm.salesmanname}${sessionScope.sm.level}，欢迎来到宿舍管理系统！</span>
                <div class="layui-col-md6" style="padding: 30px;left: 60px;background-color: #F2F2F2;">
                    <div class="layui-card">
                        <div class="layui-card-header">个人信息
                        </div>
                        <div class="layui-card-body">
                            <%--<div class="layui-form-label" style="text-align: left">你好</div>--%>
                            用户名：${sessionScope.sm.salesmanname}
                        </div>
                        <div class="layui-card-body">
                            电话：${sessionScope.user.phone}
                        </div>
                        <div class="layui-card-body">
                            级别描述：${sessionScope.sm.level}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2019-2020 版权所有</div>
</div>
<!-- 底部结束 -->

<script>

    layui.config({
        base: 'layui_exts/',
    }).extend({
        excel: 'excel',
    });

</script>
</body>
</html>
