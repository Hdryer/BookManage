<%--
  Created by IntelliJ IDEA.
  User: bindada
  Date: 2022/2/13
  Time: 0:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="../../js/login2_studentpage.js"></script>
</head>
<body >

<div class="panel panel-info">
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-10">
                <h1 style="margin-left: 50%" >图书室</h1>
            </div>
            <div class="col-md-2">
                <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">你好,${user.username}
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" id="myinformation" href="#">我的信息</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" href="#">我的借阅</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" href="#">我的收藏</a>
                        </li>
                        <li role="presentation" class="divider"></li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1"  href="/student/logout" >退出登录</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

<%--        <div><h3>学生界面欢迎${user.username}  成啦！！！</h3></div>--%>
    </div>
    <div class="container">
<%--     ********************************************   个人信息面板--%>
        <div id="informationpage" style="border: black 1px solid; display:none;left: 0;margin: auto;position: fixed;right: 0;top: 0;bottom: 0; background-color: white;width: 1000px;height: 550px; z-index: 2;border-radius: 5px">
            <form action="/student/updatepassword" method="post" id="myform_updatepwd">
                <div class="row" style="margin: 12px">
                    <div class="col-md-2"><h4>修改密码</h4></div>
                    <div class="col-md-9"></div>
                    <div class="col-md-1"><button id="off2" class="btn btn-default btn-group-sm">×</button></div>
                </div>
                <div class="row" style="margin: 70px">
                    <div class="col-md-1"></div>
                    <div class="col-md-2"><span>学号：</span></div>
                    <div class="col-md-7"><input id="studentid" name="studentid" type="text" value="${user.studentid}" class="form-control" readonly></div>
                    <div class="col-md-2"></div>
                </div>
                <div class="row" style="margin: 70px">
                    <div class="col-md-1"></div>
                    <div class="col-md-2"><span>旧密码：</span></div>
                    <div class="col-md-7"><input id="password2" type="text" value="${user.password}" class="form-control" disabled></div>
                    <div class="col-md-2"></div>
                </div>
                <div class="row" style="margin: 70px">
                    <div class="col-md-1"></div>
                    <div class="col-md-2"><span>新密码：</span></div>
                    <div class="col-md-7"><input id="password" type="text" name="password" value="" class="form-control" required></div>
                    <div class="col-md-2"></div>
                </div>
                <button id="update" type="submit" class="btn btn-primary" style="margin-left: 48%">修改</button>
            </form>
<%--            <div class="row" style="margin: 35px">--%>
<%--                <div class="col-md-2"></div>--%>
<%--                <div class="col-md-1"><span>性别：</span></div>--%>
<%--                <div class="col-md-7"><input id="sex" type="text" value="${user.sex}" class="form-control"></div>--%>
<%--                <div class="col-md-2"></div>--%>
<%--            </div>--%>
<%--            <div class="row" style="margin: 35px">--%>
<%--                <div class="col-md-2"></div>--%>
<%--                <div class="col-md-1"><span> 年龄：</span></div>--%>
<%--                <div class="col-md-7"><input id="age" type="text" value="${user.age}" class="form-control"></div>--%>
<%--                <div class="col-md-2"></div>--%>
<%--            </div>--%>
<%--            <div class="row" style="margin: 35px">--%>
<%--                <div class="col-md-2"></div>--%>
<%--                <div class="col-md-1"><span> 地区：</span></div>--%>
<%--                <div class="col-md-7"><input id="address" type="text" value="${user.address}" class="form-control"></div>--%>
<%--                <div class="col-md-2"></div>--%>
<%--            </div>--%>

        </div>
<%--        ------------------------------------------------------书籍展示--%>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/Java基础.png" alt=".." style="width: 240px;height: 300px">
                        <h3>java基础</h3>
                        <p>从入门到入土</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/数据库系统概念.png" style="width: 240px;height: 300px">
                        <h3>数据库系统概念</h3>
                        <p>Mysql，Orancle</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/机器学习.png" style="width: 240px;height: 300px">
                        <h3>机器学习</h3>
                        <p>感知机、卷积神经网络</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/计算机组成原理.png" alt=".." style="width: 240px;height: 300px">
                        <h3>计算机组成原理</h3>
                        <p>从底层探究计算机</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/计算机网络.png" alt=".." style="width: 240px;height: 300px">
                        <h3>计算机网络</h3>
                        <p>tcp/ip、udp/ip协议</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/操作系统.png" style="width: 240px;height: 300px">
                        <h3>操作系统</h3>
                        <p>Os操作系统、Linux</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/大数据导论.png" style="width: 240px;height: 300px">
                        <h3>大数据导论</h3>
                        <p>hadoop生态平台、mapreduce</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../../images/人工智能导论.png" alt=".." style="width: 240px;height: 300px">
                        <h3>人工智能导论</h3>
                        <p>Artificial Intelligence、探究AI的奥秘</p>
                        <button class="btn btn-default"><span class="glyphicon glyphicon-heart"></span>收藏</button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-book"></span>借阅</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
