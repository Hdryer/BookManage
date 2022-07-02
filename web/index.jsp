<%--
  Created by IntelliJ IDEA.
  User: bindada
  Date: 2022/2/7
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        $(function () {
            $.get("/all/login",function () {
                console.log("登录页面");
            })
        })
    </script>
</head>
<body>
<label> <div style="height: 80px;width: 150px;border:1px solid black; border-radius:10px;background-color:#0066ff; margin: auto;position: absolute;left: 0;right: 0;top: 0;bottom: 0"><a href="/all/login" style="text-decoration: none"><h2 style="color: #f1efeb;text-align: center">图书馆系统</h2></a></div></label>
</body>
</html>
