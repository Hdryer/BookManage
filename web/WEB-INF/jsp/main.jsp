<%--
  Created by IntelliJ IDEA.
  User: bindada
  Date: 2022/1/31
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <link type="text/css" rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </head>
<body>
<header>
    <div style=" height: 50px;float:left;width: 10%;margin-left: 20px"><img src="../../images/图书馆%20(1).png" style="width: 50px;height: 50px"></div>
    <div style="float: right; width: 100px;margin-right:50px;height: 40px;padding-top: 5px">
        <div class="dropdown">
            <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">你好,${user.admin}
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li role="presentation">
                    <a role="menuitem" tabindex="-1"  href="#">我的信息</a>
                </li>
                <li role="presentation" class="divider"></li>
                <li role="presentation">
                    <a role="menuitem" tabindex="-1"  href="/user/logout">退出登录</a>
                </li>
            </ul>
        </div>
    </div>
</header>
<aside>
    <div>
        <ul id="ul1" class="ul1">
            <li><label><a target="${pageContext.request.contextPath}/html/firstpage.html">系统首页</a></label></li>
            <li><label><a target="${pageContext.request.contextPath}/html/bookmanage.html">图书管理</a></label></li>
            <li><label><a target="${pageContext.request.contextPath}/html/approvalpage.html">借阅审批</a></label></li>
            <li><label><a target="${pageContext.request.contextPath}/html/usermanage.html">用户管理</a></label></li>
        </ul>
    </div>
</aside>
<section>
    <div>
        <div id="iframe"  style="float: right;width:90%;height:600px; margin: 2px">

        </div>
    </div>
</section>

<script>
    $(function () {
        $.post("${pageContext.request.contextPath}/html/firstpage.html",function (data) {
            $("#iframe").html(data);  //初始化界面
        });

        $("#ul1 li").click(function () {
            var id =$(this);
            console.log(id);
            target = id.find('a').attr('target');
            $.post(target,function (data) {
                $("#iframe").html(data);
            });
        });
    });
</script>
</body>
</html>