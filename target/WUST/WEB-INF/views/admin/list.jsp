<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="../../../css/adminstyle.css">
    <!--[if lt IE 9]>
    <script src="../../../js/html5.js"></script>
    <![endif]-->
    <script src="../../../js/jquery.js"></script>
    <script src="../../../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<body>
<!--header-->
<header>
<input type="hidden" id="msg" value="${amsg}">

    <h1><img src="../../../images/admin_logo.png"/></h1>
    <ul class="rt_nav">
        <li><a href="#" class="clear_icon">清除缓存</a></li>
        <li><a href="#" class="admin_icon">${admin.adminname }</a></li>
        <li><a href="#" class="set_icon">账号设置</a></li>
        <li><a href="http://localhost:8080/Shop/Admin/Adminout" class="quit_icon">安全退出</a></li>
    </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
    <h2><a href="#"></a></h2>
    <ul>
        <li>
            <dl>
                <dt>商品</dt>
                <!--当前链接则添加class:active-->
                <dd><a href="http://localhost:8081/Admin/Login" class="active">商品列表</a></dd>
                <dd><a href="http://localhost:8081/Admin/Add">添加商品</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>订单信息</dt>
                <dd><a href="http://localhost:8081/Admin/OrderList">订单列表</a></dd>
            </dl>
        </li>
    </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单列表</h2>
       <a class="fr top_rt_btn add_icon">添加商品</a>
      </div>
      <section class="mtb">
       <form action="{:U('admin/Order/search')}" method="post">
       <select class="select" name="select">
        <option>订单状态</option>
        <option>待付款</option>
        <option>待发货</option>
        <option>配送中...</option>
        <option>已发货</option>
       </select>
       <input type="text" name="search" class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..."/>
       <input type="submit" value="查询" class="group_btn"/>
       </form>
      </section>
      <table class="table">
       <tr>
        <th>订单编号</th>
        <th>收件人</th>
        <th>联系电话</th>
        <th>收件人地址</th>
        <th>订单状态</th>
        <th>操作</th>
       </tr>
       <c:forEach items="${aorder_list }" var="order">
       <tr>
        <td class="center">${order.dingdanhao }</td>
        <td>${order.username }</td>
        <td>${order.phone }</td>
        <td>
         <address>${order.address }</address>
        </td>
        <td class="center"><a>${order.state }</a></td>
        <td class="center">
         <a href="http://localhost:8080/Shop/Admin/Checkorder?dingdanhao=${order.dingdanhao }" title="查看订单" class="link_icon" >&#118;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       </c:forEach>
      </table>
 </div>
</section>
</body>
</html>