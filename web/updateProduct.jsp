<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Single : Cellphone X</title>
        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //tags -->
        <link rel="icon" type="image/x-icon" href="https://www.freepnglogos.com/uploads/twitter-x-logo-png/twitter-x-logo-png-9.png">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- //for bootstrap working -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <style>
            .body_createProduct{
                margin:70px 10px 70px 120px;
            }
            .content_createProduct{
                background: rgba(0, 0, 0, 0.7);
                box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 1.8); /* Thêm bóng đổ */
                border-radius:15px;
                padding: 50px 50px 70px 50px;
            }
            .content_createProduct > input .content_createProduct > select{
                margin-top: 10px;
            }

            .title{
                font-family: Times;
                font-size: 22px;
                color: white;
            }
            .input > input, .input > select {
                border: none;
                margin-top: 10px;
                padding: 10px 50px;
                border-radius: 20px;
                background: rgba(255, 255, 255, 0.9);
                width:100%;

            }
            .submit > input{
                border: none;
                margin-top: 10px;
                padding: 10px 50px;
                border-radius: 20px;
                background: background;
                width:100%;
                text-align: center;
                font-family: Times;

            }
            @keyframes changeImage {
                0%, 24.99% {
                    background-image: url('https://api.epic.com.cy/cdn/storage/products/iphone-15-pro-max-white-jpg-w5mAAZl_W.jpg');
                }
                25%, 49.99% {
                    background-image: url('https://cf.shopee.vn/file/1e1ed727b366712356405041c20c25ab');
                }
                50%, 74.99% {
                    background-image: url('https://fonez.ie/cdn/shop/files/iPhone15ProBlueTitanium.webp?v=1696586839&width=850');
                }
                75%, 100% {
                    background-image: url('https://cdn.ipadizate.com/2023/09/iphone-15-pro.png?width=768&format=nowebp');
                }
            }

            .animated-image {
                margin-top: 100px;
                margin-right: 50px;
                width: 500px;
                height: 600px;
                animation-name: changeImage;
                animation-duration: 12s; /* Tăng thời lượng animation */
                animation-iteration-count: infinite;
                background-size: cover; /* Đảm bảo hình ảnh phủ kín div */
                background-position: center; /* Căn hình ảnh ở giữa */
            }
        </style>

    </head>
    <body>
        <div class="header" id="home">
            <div class="container">
                <ul>
                    <li ><i class="fa fa-phone" aria-hidden="true"></i> 01234567898</li>
                    <li ><i class="fa fa-envelope-o" aria-hidden="true"></i> nhom9prj@gmail.com</li>
                        <c:if test="${sessionScope.ac != null}">
                        <li > <a href="logout" ><i class="fa fa-lock-alt" aria-hidden="true"></i> Đăng xuất </a></li>
                        <li > <i class="fa fa-lock-alt" aria-hidden="true"></i> Xin chào ${sessionScope.ac.displayname} </li>
                        </c:if>
                        <c:if test="${sessionScope.ac == null}">
                        <li > <a href="login" ><i class="fa fa-unlock-alt" aria-hidden="true"></i> Đăng Nhập </a></li>
                        <li > <a href="signup" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Đăng kí </a></li>
                        </c:if>
                </ul>
            </div>
        </div>
        <!-- //header -->
        <!-- header-bot -->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <div class="col-md-4 header-middle">
                    <form action="search" method="post">
                        <input type="search" name="keyword" placeholder="Tìm kiếm..." required="">
                        <input type="submit" value=" ">
                        <div class="clearfix"></div>
                    </form>
                </div>
                <!-- header-bot -->
                <div class="col-md-4 logo_agile">
                    <h1><a href="home"><span>Cell</span>phone X<i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
                </div>
                <!-- header-bot -->
                <div class="col-md-4 agileits-social top_content">
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social">
                        <li class="share"> </li>
                        <li><a  class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a class="twitter"> 
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a  class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a  class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>



                </div>
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
                                    <li class="active menu__item menu__item--current"><a class="menu__link" href="home">Trang chủ <span class="sr-only">(current)</span></a></li>
                                    <li class=" menu__item"><a class="menu__link" href="about.jsp">Cellphone X</a></li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Iphone<span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="agile_inner_drop_nav_info">
                                                <div class="col-sm-6 multi-gd-img1 multi-gd-text ">
                                                    <a href="shop-now"><img src="images/top1_1.png" alt=" "/></a>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <c:forEach items="${sessionScope.listCategoryPhone}" var="R">
                                                            <li><a href="category-controller?categoryId=${R.categoryId}">${R.categoryName}</a></li><br/>
                                                            </c:forEach> 
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Phụ Kiện<span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="agile_inner_drop_nav_info">
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <c:forEach items="${sessionScope.listCategoryAccessory}" var="G">
                                                            <li><a href="category-controller?categoryId=${G.categoryId}">${G.categoryName}</a></li><br/>
                                                            </c:forEach>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">                                        
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6 multi-gd-img multi-gd-text ">
                                                    <a href="shop-now"><img src="images/top2_2.png" alt=" "/></a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class=" menu__item"><a class="menu__link" href="contact.jsp">Liên hệ</a></li>
                                        <c:if test="${sessionScope.ac.isAdmin == 1}">
                                        <li class="menu__item dropdown">
                                            <a class="menu__link" href="#" class="dropdown-toggle" data-toggle="dropdown">Quản lý <b class="caret"></b></a>
                                            <ul class="dropdown-menu agile_short_dropdown">
                                                <li><a href="list-products">Ds sản phẩm</a></li>
                                                <li><a href="#">Đơn đặt hàng</a></li>
                                            </ul>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </nav>	
                </div>
                <!--cart-->
                <div class="top_nav_right">
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
                        <form action="carts" method="post" class="last"> 
                            <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button> (${sessionScope.cart.size()})
                        </form>  
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="container body_createProduct">
            <div class="col-md-6 ab_pic_w3ls animated-image">


            </div>
            <div class="col-md-6 content_createProduct">
                <form action="update-product" method="post">
                    <h1 style="color: white; margin-bottom: 30px">Update product</h1>
                    <hr style="
                        height:1px;
                        background:black;
                        ">
                    <table>

                        <input type="hidden" name="id" value="${product.id}" />
                        <tr>
                            <td class="title">Name Product:</td>
                            <td class="input"><input type="text" name="name" value="${product.name}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Category_name:</td>
                            <td class="input">
                                <select name="category_id">
                                    <c:forEach items="${listC}" var="C">
                                        <option ${C.categoryId == product.category_id?"selected":""} value="${C.categoryId}">
                                            ${C.categoryName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">Quantity:</td>
                            <td class="input"><input type="text" name="quantity" value="${product.quantity}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Price:</td>
                            <td class="input"><input type="text" name="price" value="${product.price}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Description</td>
                            <td class="input"><input type="text" name="description" value="${product.description}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Image:</td>
                            <td class="input"><input type="text" name="imagine" value="${product.imagine}" /></td>
                        </tr>
                        <tr>
                            <td  class="title">Image2:</td>
                            <td class="input"> <input type="text" name="imagine2" value="${product.imagine2}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Image3:</td>
                            <td class="input"><input type="text" name="imagine3" value="${product.imagine3}" /></td>
                        </tr>
                        <tr>
                            <td class="title">Created_date:</td>
                            <td class="input"><input type="date" name="created_date" value="${product.created_date}" /></td>
                        </tr>
                        <tr>
                            <td style="font-family: Times;
                                font-size: 22px; color:white">Status:</td>
                            <c:if test="${product.status == true}">
                                <td style="color:white"><input type="radio" name="status" value="0" />Disable
                                    <input type="radio" name="status" checked value="1" />Enable</td>
                                </c:if>
                                <c:if test="${product.status == false}">
                                <td style="color:white"><input type="radio" name="status" checked value="0" />Disable
                                    <input type="radio" name="status" value="1" />Enable</td>
                                </c:if>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="submit" style="font-size: 22px"><input type="submit" value="save"/></td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
        <div class="footer">
            <div class="footer_agile_inner_info_w3l">
                <div class="col-md-3 footer-left">
                    <h2><a href="home"><span>Cell</span>phone X</a></h2>
                    <p>Cellphone X cam kết mang đến cho khách hàng trải nghiệm mua sắm tốt nhất và sở hữu những sản phẩm chất lượng, giúp bạn tự tin và nổi bật.</p>
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                        <li><a  class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a  class="twitter"> 
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a  class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a  class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>
                </div>
                <div class="col-md-9 footer-right">
                    <div class="sign-grds">
                        <div class="col-md-4 sign-gd">
                            <h4>Các trang <span></span> </h4>
                            <ul>
                                <li><a href="home">Trang chủ</a></li>
                                <li><a href="category.jsp">Điện thoại</a></li>
                                <li><a href="category.jsp">Phụ kiện</a></li>
                                <li><a href="about.jsp">Cellphone X</a></li>
                                <!--                                <li><a href="typography.html">Short Codes</a></li>-->
                                <li><a href="contact.jsp">Liên hệ</a></li>
                            </ul>
                        </div>

                        <div class="col-md-5 sign-gd-two">
                            <h4>Liên Hệ <span>Cellphone X</span></h4>
                            <div class="w3-address">
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Số điện thoại</h6>
                                        <p>+1 234 567 898</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Địa chỉ Email </h6>
                                        <p>Email : nhom9prj@gmail.com</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Địa chỉ</h6>
                                        <p>FPT Đà Nẵng. 
                                        </p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 sign-gd flickr-post">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </body>
</html>