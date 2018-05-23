<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台登录</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="../../css/style.css" />
    <style>
        body{height:100%;background:#16a085;overflow:hidden;}
        canvas{z-index:-1;position:absolute;}
    </style>
    <script src="../../js/jquery.js"></script>
    <script src="../../js/verificationNumbers.js"></script>
    <script src="../../js/Particleground.js"></script>
    <script>
        $(document).ready(function() {
            //粒子背景特效
            $('body').particleground({
                dotColor: '#5cbdaa',
                lineColor: '#5cbdaa'
            });
            //验证码
            createCode();
            //测试提交，对接程序删除即可
        });
    </script>
</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>站点后台管理系统</strong>
        <em>Management System</em>
    </dt>
    <form action="/Shop/Admin/Login"  onsubmit=" return validate ()">
    <dd class="user_icon">
        <input type="text" placeholder="账号" name="adminname" class="login_txtbx"/>
    </dd>
    <dd class="pwd_icon">
        <input type="password" placeholder="密码" name="password" class="login_txtbx"/>
    </dd>
    <dd class="val_icon">
        <div class="checkcode">
            <input type="text" id="J_codetext" name="code" placeholder="验证码" maxlength="4" class="login_txtbx"
                   onchange="validate ()">
            <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
        </div>
    </dd>
    <dd>
        <button type="submit" value="立即登录" class="submit_btn">立即登录</button>
    </dd>
    </form>
    <dd>
        <p>© 2015-2016 DeathGhost 版权所有</p>
        <p>陕B2-20080224-1</p>
    </dd>
</dl>
</body>
</html>