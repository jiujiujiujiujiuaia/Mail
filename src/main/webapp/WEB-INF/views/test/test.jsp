<%--
  Created by IntelliJ IDEA.
  User: 87057
  Date: 2018/5/14
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<HEADER>
    <title>Shopping Cart</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="../../../js/jquery-1.11.min.js"></script>
    <script type="text/javascript" src="../../../js/etao.js"></script>
    <script type="text/javascript" src="../../../js/cart.js"></script>
    <link href="../../../css/cart.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="../../../css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" />
</HEADER>
<body class="container">
<div class="row hidden-print" style="margin-top: 213px">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <ol class="breadcrumb">
            <li><a href="<%=application.getContextPath()%>">首页</a></li>
            <li class="active">查看购物车</li>
        </ol>
    </div>
</div>
<div class="cart-wrap">
    <table id="cartTable" class="cart table table-condensed" >
        <thead>
        <tr>
            <th class="t-checkbox"><label><input class="check-all check" type="checkbox" />全选</label></th>
            <th class="t-goods text-center"><label>产品型号</label></th>
            <th class="text-center">产品备注</th>
            <th class="t-selling-price text-center"><label>销售单价</label></th>
            <th class="t-qty text-center"><label>采购数量</label></th>
            <th class="t-subtotal text-center"><label>金额小计</label></th>
            <th class="t-action"><label>操作</label></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td colspan="2" class="goods"><label> <input type="checkbox" class="check-one check" />ZB15KQ-PFJ-558</label></td>
            <td></td>
            <td class="selling-price number small-bold-red text-right"
                style="padding-top: 1.1rem;" data-bind="76.55">76.55</td>
            <td>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon minus">-</span> <input
                        type="text" class="number form-control input-sm" value="2" />
                    <span class="input-group-addon plus">+</span>
                </div>
            </td>
            <td class="subtotal number small-bold-red text-right" style="padding-top: 1.1rem;"></td>
            <td class="action" style="padding-top: 1.1rem;"><span class="delete btn btn-xs btn-warning">删除</span></td>
        </tr>
        <tr>
            <td colspan="2" class="goods"><label><input
                    type="checkbox" class="check-one check" />ZB15KQE-TFD-558</label></td>
            <td></td>
            <td class="selling-price number small-bold-red text-right"
                style="padding-top: 1.1rem;" data-bind="1100">1100</td>
            <td>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon minus">-</span> <input
                        type="text" class="number form-control input-sm" value="3" />
                    <span class="input-group-addon plus">+</span>
                </div>
            </td>
            <td class="subtotal number small-bold-red text-right"
                style="padding-top: 1.1rem;"></td>
            <td class="action" style="padding-top: 1.1rem;"><span
                    class="delete btn btn-xs btn-warning">删除</span></td>
        </tr>
        <tr>
            <td colspan="2" class="goods"><label><input
                    type="checkbox" class="check-one check" />ZB21KQ-TFD-558</label></td>
            <td></td>
            <td class="selling-price number small-bold-red text-right"
                style="padding-top: 1.1rem;" data-bind="1200">1200</td>
            <td>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon minus">-</span> <input
                        type="text" class="number form-control input-sm" value="6" />
                    <span class="input-group-addon plus">+</span>
                </div>
            </td>
            <td class="subtotal number small-bold-red text-right"
                style="padding-top: 1.1rem;"></td>
            <td class="action" style="padding-top: 1.1rem;"><span
                    class="delete btn btn-xs btn-warning">删除</span></td>
        </tr>
        <tr>
            <td colspan="2" class="goods"><label><input
                    type="checkbox" class="check-one check" />ZBD45KQE-TFD-558</label></td>
            <td></td>
            <td class="selling-price number small-bold-red text-right"
                style="padding-top: 1.1rem;" data-bind="1400">1400</td>
            <td>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon minus">-</span> <input
                        type="text" class="number form-control input-sm" value="8" />
                    <span class="input-group-addon plus">+</span>
                </div>
            </td>
            <td class="subtotal number small-bold-red text-right"></td>
            <td class="action" style="padding-top: 1.1rem;"><span
                    class="delete btn btn-xs btn-warning">删除</span></td>
        </tr>
        </tbody>
    </table>

    <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12">
            <div class="cart-summary">
                <div style="margin-left: 2rem;" class="pull-right">
                    <a href="confirmation.html"
                       id="btn_settlement" type="button" class="btn btn-primary" disabled>去结算</a>
                </div>
                <div style="margin-left: 1rem; margin-top: 0.4rem;" class="pull-right total">
                    <label>金额合计:<span id="priceTotal" class="price-total large-bold-red">0.00</span></label>
                </div>
                <div style="margin-top: 4px;" class="pull-right">
                    <label>您选择了<span id="itemCount" class="large-bold-red" style="margin: 0 4px;"></span>种产品型号，共计<span id="qtyCount" class="large-bold-red" style="margin: 0 4px;"></span>件
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>