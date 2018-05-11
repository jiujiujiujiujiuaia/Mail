<%--
  Created by IntelliJ IDEA.
  User: 87057
  Date: 2018/5/5
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="Login" method="post" >
    <label style="width:50px;float:left;text-align:right;">用户名</label>
    <input name="username" type="text"/><br/>
    <label style="width:50px;float:left;text-align:right;">密码</label>
    <input name="password" type="text"/>
    <br>
    <input type="submit" value="登录"/>
</form>
<span style="color:red;">${errorMsg}</span>

</body>
</html>
