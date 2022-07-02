<%--
  Created by IntelliJ IDEA.
  User: bindada
  Date: 2022/2/7
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书馆系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-image: url("${pageContext.request.contextPath}/images/background.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }

        .lab1 {
            color: red;
            margin-top: 10px;
            margin-right: 3%;
            float: right;
            font-size: 5px;
        }

        .lab1:hover {
            text-decoration: underline;
        }

        .lab2 {
            color: red;
            margin-left: 12%;
        }

        .div1 {
            width: 500px;
            height: 300px;
            border: black 1px solid;
            border-radius: 4px;
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            background-color: rgba(252, 253, 253, 0.7);
        }

        .div2 {
            margin-left: 20%;
            margin-top: 8%;
        }

        .div3 {
            margin-left: 20%;
            margin-top: 2%;
        }

        .div4 {
            margin-left: 20%;
            margin-top: 2%;
        }

        #div11 {
            width: 600px;
            height: 420px;
            position: absolute;
            border: 1px black solid;
            border-radius: 10px;
            background-color: rgba(250, 252, 251, 1);
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            margin: auto;
            z-index: 2;
            display: none;
        }

        input[type=text] {
            margin: 10px;
            padding: 5px;
            width: 55%;
            border-radius: 4px;
            border: black 1px solid;
        }

        input[type=password] {
            margin: 10px;
            padding: 5px;
            width: 55%;
            border-radius: 4px;
            border: black 1px solid;
        }

        input[type=radio] {
            margin-left: 25px;
        }

        #myform2 div {
            margin-left: 50px;
        }

        .btn {
            width: 80px;
            height: 40px;
            border: black 1px solid;
            border-radius: 4px;
            background-color: #f1efeb;
            color: black;
            font-size: 15px;
            margin-left: 40%;
            margin-top: 3%;
        }

        .btn:hover {
            background-color: #faf8ec;
        }
    </style>

</head>
<body>
<div>
    <p style="text-align: center; font-family: 宋体;font-size:50px;margin-top: 50px">图书馆系统</p>
    <div class="div1">
        <label id="lab1" class="lab1">未有账号？注册</label>
        <form action="" method="post" id="myform">
            <div class="div2">
                <div style="height: 22px"><label id="lab2" class="lab2">${message}</label></div>
                <label>账号:</label>
                <input type="text" name="admin" id="admin" placeholder="admin/学号" value="${student.studentid}">
            </div>
            <div class="div3">
                <label>密码:</label>
                <input type="password" name="password" id="password" placeholder="密码" value="${student.password}">
            </div>
            <div class="div4">
                <label>身份:</label>
                <label><input type="radio" name="identity" value="0" >管理员</label>
                <label><input type="radio" name="identity" value="1" checked>普通用户</label>
            </div>
            <div>
                <button type="button" id="login" class="btn">登录</button>
            </div>
        </form>
    </div>

    <%--    注册的面板--%>
    <div id="div11">
        <div><button id="off" style="border-radius: 5px;float: right; width: 25px;height: 25px"><h3 style="font-size: 10px">×</h3></button></div>
        <div style="width:400px; height:420px;position: absolute;left: 0;top: 0;right: 0;bottom: 0;margin: auto">
            <br>
            <h3 style="text-align: center">用户注册</h3>
            <form id="myform2" action="/student/addstudent" method="post">
                <div style="height: 22px"><label id="lab3" class="lab2"></label></div>
                <div>
                    <label>学号:</label>
                    <input type="text" name="studentid" id="studentid" placeholder="学号" required>
                </div>
                <div>
                    <label>密码:</label>
                    <input type="text" name="password" id="password2" placeholder="密码" required>
                </div>
                <div>
                    <label>姓名:</label>
                    <input type="text" name="username" id="username" placeholder="姓名" required>
                </div>
                <div>
                    <label>性别:</label>&nbsp;&nbsp;
                    <select name="sex" style="text-align: center;width: 195px;height: 28px;border-radius: 4px">
                        <option value="男">Male</option>
                        <option value="女">FeMale</option>
                    </select>
                </div>
                <div>
                    <label>年龄:</label>
                    <input type="text" name="age" id="age" placeholder="年龄" required>
                </div>
                <div>
                    <label>地区:</label>
                    <input type="text" name="address" id="address" placeholder="地址" required>
                </div>
                <div>
                    <input type="radio" name="identity" value="1" style="display: none" checked>
                </div>
                <span>
                    <button type="button" id="register" class="btn">注册</button>
                </span>
            </form>
        </div>
    </div>
</div>

<script>
    $(function () {
        $("#login").click(function () {
            if ($("#admin").val() == "") {
                $("#lab2").text("账号不能为空");
            } else if ($("#password").val() == "") {
                $("#lab2").text("密码不能为空");
            } else {
                if ($(".div4 input:radio[name='identity']:checked").val()=="0"){
                    $("#myform").attr("action","/user/login");
                    $("#myform").submit();
                }else {
                    if (escape($("#admin").val()).indexOf("%u")>=0){
                        $("#lab2").text("账号或密码错误");
                    }
                    else {
                        $("#myform").attr("action","/student/login");
                        $("#myform").submit();
                    }
                }
            }
        });

        $("#lab1").click(function () {
            $("#div11").show();
        });

        $("#off").click(function () {
            $("#div11").hide();
            $("#myform2 input").val("");
        });

        $("#register").click(function () {
            if ($("#studentid").val() == "") {
                $("#lab3").text("学号不能为空")
            } else {
                $("#myform2").submit();
                $("#myform2 input").val("");
            }
        })
    })
</script>
</body>
</html>
