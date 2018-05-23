<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="entity.Situation" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: 87057
  Date: 2018/5/8
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <link rel="stylesheet" href="../../../css/styles.css"/>
    <script type="text/javascript" src="../../../js/script.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <script type="text/javascript" src="../../../js/jquery-1.11.min.js"></script>
    <script type="text/javascript" src="../../../js/etao.js"></script>
    <script type="text/javascript" src="../../../js/cart.js"></script>
    <link href="../../../css/cart.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="../../../css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" />




    <!-- Bootstrap core CSS -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../../js/ie8-responsive-file-warning.js"></script><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--//tags -->
    <link href="../../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../../css/font-awesome.css" rel="stylesheet">
    <link href="../../../css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header -->
<div class="header" id="home">
    <div class="container">
        <ul>
            <li> <a href="#"><i class="fa fa-unlock-alt" aria-hidden="true"></i>欢迎${customer.c_name} </a></li>
            <li> <a href="/Index/LogOut" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>logout </a></li>
            <li><i class="fa fa-phone" aria-hidden="true"></i> Call : 01234567898</li>
            <li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <div class="col-md-4 header-middle">
            <form action="#" method="post">
                <input type="search" name="search" placeholder="Search here..." required="">
                <input type="submit" value=" ">
                <div class="clearfix"></div>
            </form>
        </div>
        <!-- header-bot -->
        <div class="col-md-4 logo_agile">
            <h1><a href="/Index/Home"><span>综合性</span>电商 <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
        </div>
        <!-- header-bot -->

        <div class="clearfix"></div>
    </div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item menu__item--current"><a class="menu__link" href="/Index/Home">Home <span class="sr-only">(current)</span></a></li>
                            <li class=" menu__item"><a class="menu__link" href="about.html">About</a></li>
                            <li class="dropdown menu__item">
                                <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Men's wear <span class="caret"></span></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="agile_inner_drop_nav_info">
                                        <div class="col-sm-6 multi-gd-img1 multi-gd-text ">
                                            <a href="../../../mens.html"><img src="../../../images/top2.jpg" alt=" "/></a>
                                        </div>
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="../../../mens.html">Clothing</a></li>
                                                <li><a href="../../../mens.html">Wallets</a></li>
                                                <li><a href="../../../mens.html">Footwear</a></li>
                                                <li><a href="../../../mens.html">Watches</a></li>
                                                <li><a href="../../../mens.html">Accessories</a></li>
                                                <li><a href="../../../mens.html">Bags</a></li>
                                                <li><a href="../../../mens.html">Caps & Hats</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="../../../mens.html">Jewellery</a></li>
                                                <li><a href="../../../mens.html">Sunglasses</a></li>
                                                <li><a href="../../../mens.html">Perfumes</a></li>
                                                <li><a href="../../../mens.html">Beauty</a></li>
                                                <li><a href="../../../mens.html">Shirts</a></li>
                                                <li><a href="../../../mens.html">Sunglasses</a></li>
                                                <li><a href="../../../mens.html">Swimwear</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown menu__item">
                                <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Women's wear <span class="caret"></span></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="agile_inner_drop_nav_info">
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="../../../womens.html">Clothing</a></li>
                                                <li><a href="../../../womens.html">Wallets</a></li>
                                                <li><a href="../../../womens.html">Footwear</a></li>
                                                <li><a href="../../../womens.html">Watches</a></li>
                                                <li><a href="../../../womens.html">Accessories</a></li>
                                                <li><a href="../../../womens.html">Bags</a></li>
                                                <li><a href="../../../womens.html">Caps & Hats</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="../../../womens.html">Jewellery</a></li>
                                                <li><a href="../../../womens.html">Sunglasses</a></li>
                                                <li><a href="../../../womens.html">Perfumes</a></li>
                                                <li><a href="../../../womens.html">Beauty</a></li>
                                                <li><a href="../../../womens.html">Shirts</a></li>
                                                <li><a href="../../../womens.html">Sunglasses</a></li>
                                                <li><a href="../../../womens.html">Swimwear</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 multi-gd-img multi-gd-text ">
                                            <a href="../../../womens.html"><img src="../../../images/top1.jpg" alt=" "/></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="menu__item dropdown">
                                <a class="menu__link" href="#" class="dropdown-toggle" data-toggle="dropdown">Short Codes <b class="caret"></b></a>
                                <ul class="dropdown-menu agile_short_dropdown">
                                    <li><a href="../../../icons.html">Web Icons</a></li>
                                    <li><a href="../../../typography.html">Typography</a></li>
                                </ul>
                            </li>
                            <li class=" menu__item"><a class="menu__link" href="../../../contact.html">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="top_nav_right">
            <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                <form action="#" method="post" class="last">
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="display" value="1">
                    <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                </form>

            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner-top -->
<!-- Modal1 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="col-md-8 modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign In <span>Now</span></h3>
                    <form action="/Login/login" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" name="c_name" required="">
                            <label>Name</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <input type="password" name="c_password" required="">
                            <label>Password</label>
                            <span></span>
                        </div>
                        <input type="submit" value="Sign In">
                    </form>
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
                        <li><a href="#" class="facebook">
                            <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="twitter">
                            <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="instagram">
                            <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="pinterest">
                            <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>
                    <div class="clearfix"></div>
                    <p><a href="#" data-toggle="modal" data-target="#myModal2" > Don't have an account?</a></p>

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal1 -->
<!-- Modal2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="col-md-8 modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign Up <span>Now</span></h3>
                    <form action="register" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" name="c_name" required="">
                            <label>Name</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <input type="password" name="c_password" required="">
                            <label>Password</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <input type="email" name="c_mail" required="">
                            <label>email</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <input type="password" name="Confirm Password" required="">
                            <label>Confirm Password</label>
                            <span></span>
                        </div>
                        <input type="submit" value="Sign Up">
                    </form>
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
                        <li><a href="#" class="facebook">
                            <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="twitter">
                            <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="instagram">
                            <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="pinterest">
                            <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>
                    <div class="clearfix"></div>
                    <p><a href="#">By clicking register, I agree to your terms</a></p>

                </div>
                <div class="col-md-4 modal_body_right modal_body_right1">
                    <img src="../../../images/log_pic.jpg" alt=" "/>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>

    <%--<%List<Situation> situation = (List<Situation>)session.getAttribute("situation");--%>
        <%--ArrayList<Product> products = (ArrayList<Product>) session.getAttribute("product");--%>
        <%--String p_name=null;--%>
        <%--int p_bargin = 0;--%>
        <%--Double p_price = 0.0 ;--%>
        <%--Double realPrice =0.0;--%>
        <%--for(int i =0;i<situation.size();i++){--%>
            <%--int p_id = situation.get(i).getP_id();--%>
            <%--String status = situation.get(i).getStatus();--%>
            <%--for(Product product :products){--%>
                <%--if(product.getP_id() == p_id){--%>
                     <%--p_name = product.getP_name();--%>
                     <%--p_bargin = product.getP_bargin();--%>
                    <%--p_price = Double.parseDouble(product.getP_price());--%>
                    <%--realPrice = p_price/10*p_bargin;--%>
                <%--}--%>
            <%--}--%>
    <%--%>--%>

<div class="cart-wrap">
    <table id="cartTable" class="cart table table-condensed" >
        <thead>
        <tr>
            <th class="t-checkbox"><label><input class="check-all check" type="checkbox" />全选</label></th>
            <th class="t-goods text-center"><label>商品名称</label></th>

            <th class="t-selling-price text-center"><label>销售单价</label></th>

            <th class="t-subtotal text-center"><label>金额小计</label></th>
            <th class="t-qty text-center"><label>采购数量</label></th>
            <th class="text-center">尺寸</th>
            <th class="text-center">物流状态</th>
            <th class="t-action"><label>操作</label></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cartsituation}" var="situation">
        <tr>
            <td colspan="2" class="goods"><label> <input type="checkbox" class="check-one check" />${situation.p_name}</label></td>
            <td class="selling-price number small-bold-red text-right"
                style="padding-top: 1.1rem;" data-bind=${situation.p_price}>${situation.p_price}
            </td>

            <td class="subtotal number small-bold-red text-right" style="padding-top: 1.1rem;"></td>

            <td>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon minus">-</span> <input
                        type="text" class="number form-control input-sm" value="${situation.count}" />
                    <span class="input-group-addon plus">+</span>
                </div>
            </td>
            <td>${situation.size}</td>
            <td>${situation.status}</td>>
            <td class="action" style="padding-top: 1.1rem;"><span class="delete btn btn-xs btn-warning">删除</span></td>

        </tr>

        </c:forEach>

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






<!--/grids-->
<div class="coupons">
    <div class="coupons-grids text-center">
        <div class="w3layouts_mail_grid">
            <div class="col-md-3 w3layouts_mail_grid_left">
                <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                    <i class="fa fa-truck" aria-hidden="true"></i>
                </div>
                <div class="w3layouts_mail_grid_left2">
                    <h3>FREE SHIPPING</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                </div>
            </div>
            <div class="col-md-3 w3layouts_mail_grid_left">
                <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                    <i class="fa fa-headphones" aria-hidden="true"></i>
                </div>
                <div class="w3layouts_mail_grid_left2">
                    <h3>24/7 SUPPORT</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                </div>
            </div>
            <div class="col-md-3 w3layouts_mail_grid_left">
                <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                    <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                </div>
                <div class="w3layouts_mail_grid_left2">
                    <h3>MONEY BACK GUARANTEE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                </div>
            </div>
            <div class="col-md-3 w3layouts_mail_grid_left">
                <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                    <i class="fa fa-gift" aria-hidden="true"></i>
                </div>
                <div class="w3layouts_mail_grid_left2">
                    <h3>FREE GIFT COUPONS</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!--grids-->
<!-- footer -->
<div class="footer">
    <div class="footer_agile_inner_info_w3l">
        <div class="col-md-3 footer-left">
            <h2><a href=""><span>E</span>lite Shoppy </a></h2>
            <p>Lorem ipsum quia dolor
                sit amet, consectetur, adipisci velit, sed quia non
                numquam eius modi tempora.</p>
            <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                <li><a href="#" class="facebook">
                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="twitter">
                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="instagram">
                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="pinterest">
                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
            </ul>
        </div>
        <div class="col-md-9 footer-right">
            <div class="sign-grds">
                <div class="col-md-4 sign-gd">
                    <h4>Our <span>Information</span> </h4>
                    <ul>
                        <li><a href="">Home</a></li>
                        <li><a href="../../../mens.html">Men's Wear</a></li>
                        <li><a href="../../../womens.html">Women's wear</a></li>
                        <li><a href="../../../about.html">About</a></li>
                        <li><a href="../../../typography.html">Short Codes</a></li>
                        <li><a href="../../../contact.html">Contact</a></li>
                    </ul>
                </div>

                <div class="col-md-5 sign-gd-two">
                    <h4>Store <span>Information</span></h4>
                    <div class="w3-address">
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Phone Number</h6>
                                <p>+1 234 567 8901</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Email Address</h6>
                                <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Location</h6>
                                <p>Broome St, NY 10002,California, USA.

                                </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>


    </div>
</div>
<!-- //footer -->
</body>
