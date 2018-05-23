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
                <dd><a href="http://localhost:8080/Shop/Admin/Index" class="active">商品列表</a></dd>
                <dd><a href="http://localhost:8080/Shop/Admin/Addgoods">添加商品</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>订单信息</dt>
                <dd><a href="http://localhost:8080/Shop/Admin/Order_list">订单列表</a></dd>
            </dl>
        </li>
    </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单详情示例</h2>
      </div>
      <table class="table">
       <tr>
        <td>收件人：${adetailorder[0].username }</td>
        <td>联系电话：${adetailorder[0].phone }</td>
        <td>收件地址：${adetailorder[0].address }</td>
        <td>付款时间：${adetailorder[0].fukuan_time }</td>
       </tr>
       <tr>
        <td>下单时间：${adetailorder[0].xiadan_time }</td>
        <td>总金额：<strong class="rmb_icon">${T }</strong></td>
        <td>确认时间：${adetailorder[0].shouhuo_time }</td>
        <td>评价时间时间：---</td>
       </tr>
       <tr>
        <td>订单状态：<a>${adetailorder[0].state }</a></td>
<!--         <td colspan="3">订单备注：<mark>{$info[0].member_beizhu}</mark></td> -->
        </tr>
      </table>
  <table class="table">
  <c:forEach items="${adetailorder }" var="adetailorder">
    <tr>
     <td class="center"><img src="${adetailorder.picture }" width="50" height="50"/></td>
     <td>${adetailorder.goodsname }</td>
     <td class="center">${adetailorder.dingdanhao }</td>
     <td class="center"><strong class="rmb_icon">${adetailorder.price }</strong></td>
     <td class="center"><strong>×${adetailorder.number }</strong></td>
    </tr>
    <input type="hidden" id="hao" value="${adetailorder.dingdanhao }">
   </c:forEach>
  </table>
  <c:choose>
  	<c:when test="${adetailorder[0].state== '待发货' }">
  	<aside class="mtb" style="text-align:right;">
       <label>管理员操作：</label>
       <button onclick="javascript:window.print()" class="group_btn">打印订单</button>
       <a href="javascript:void(0);" onclick="sub()" class="group_btn"/>发货</a>
      </aside>
  	</c:when>
  	<c:otherwise>
  	
  	</c:otherwise>
      </c:choose>
 </div>
</section>
<script type="text/javascript">
	function sub(){
		var dingdanhao=document.getElementById("hao").value;
		window.location.href="http://localhost:8080/Shop/Admin/Fahuo?dingdanhao="+dingdanhao;
	}
</script>
</body>
</html>