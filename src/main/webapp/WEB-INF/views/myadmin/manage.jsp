
<%@ page import="java.util.List" %>
<%@ page import="entity.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 87057
  Date: 2018/4/22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%--<html>--%>
<%--<head>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--<title>welcome</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:useBean id="user" class="entity.User" scope="session" />--%>
<%--welcome:--%>
<%--<% List<Book> books = (List<Book>)session.getAttribute("book"); %>--%>
<%--<%=books.get(0).getName()%> --%>
<%--<%=books.get(1).getName()%>--%>
<%--<%=books.get(2).getName()%>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="../../../css/haiwiModal.css" />
    <script type="text/javascript" src="../../../js/jquery.1.9.1.min.js"></script>
    <script type="text/javascript" src="../../../js/jquery.haiwiModal.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="../../../css/Welcome.css">
    <link rel="stylesheet" href="../../../css/alter.css">
    <title>商品后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../../css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../../js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../../js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src=" https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src=" https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">注销</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="">Overview <span class="sr-only">(current)</span></a></li>
                <li><a href="">Edit</a></li>
                <li><a href="">delete</a></li>

            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Dashboard</h1>

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
            </div>

            <h2 class="sub-header">Section title</h2>

            <div class="table-responsive">
                <a></a>>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>名字</th>
                        <th>折扣</th>
                        <th>价格</th>
                        <th>操作</th>
                        <th><button type="button" class="btn btn-primary" onclick="add_box()">添加</button></th>
                    </tr>
                    </thead>
                    <tbody>
                    <%ArrayList<Product> products = (ArrayList<Product>)session.getAttribute("product");
                        for(int i=0;i<products.size();i++){%>
                    <tr>
                        <td><%=products.get(i).getP_id()%></td>
                        <td><%=products.get(i).getP_name()%></td>
                        <td><%=products.get(i).getP_bargin()%></td>
                        <td><%=products.get(i).getP_price()%></td>
                    </tr>
                    <% }

                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%---------------------%>
<div class="fixed_box" id="box_2">
    <form action="edit" >
        <div class="button">
            <button type="button" onclick="close_box()">X</button>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="basic-addon1">编号</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1"  name="code" id="code">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="basic-addon2">书名</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="name" id="name">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="basic-addon7">类别</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="object" id="object">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="basic-addon3">价格</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="price" id="price">
            </div>
        </div>

        <div class="submit">
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </form>
</div>
<%--"-----------------------"--%>
<div class="fixed_box" id="box_3">
    <form action="/manage/add" >
        <div class="button">
            <button type="button" onclick="close_box()">X</button>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="addon1">编号</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1"  name="p_id" id="code1">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="addon2">名字</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="p_name" id="name1">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="addon7">价格</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="p_price" id="object1">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="addon3">折扣</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="p_bargin" id="price1">
            </div>
        </div>
        <div class="input">
            <div class="input-group box">
                <span class="input-group-addon" id="addon4">类型</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1" name="type" id="bargin1">
            </div>
        </div>

        <div class="submit">
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </form>
</div>
</body>

<%--------------%>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="../../../js/My_js.js"></script>
<script src=" https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../../js/vendor/jquery.min.js"><\/script>')</script>
<script src="../../../js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../../../js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../../js/ie10-viewport-bug-workaround.js"></script>

</html>

