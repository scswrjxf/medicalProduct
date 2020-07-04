<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>我的收藏</title>

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/simple-line-icons.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/revslider.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body class="shopping-cart-page">
<div id="page"> 
  <!-- Header -->
  <%@ include file="common/header.jsp" %> 
  <!-- end header -->
  <!-- Main Container -->
<section class="main-container col1-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-xs-12">
          <article class="col-main">
            <div class="cart">
              <div class="page-title">
                <h2>Sitemap</h2>
              </div>
              <div class="row content-row">
                <div class="col-xs-6 col-sm-3 col-md-3 col-lg-4">
                  <ul class="simple-list arrow-list bold-list">
                    <li> <a href="grid.html">Woman</a>
                      <ul>
                        <li><a href="grid.html">Featured products</a></li>
                        <li><a href="grid.html">New arrivals</a></li>
                        <li><a href="grid.html">Bestsellers</a></li>
                        <li><a href="grid.html">Footwear Womens</a></li>
                        <li><a href="grid.html">Shorts</a></li>
                      </ul>
                    </li>
                    <li> <a href="grid.html">Man</a>
                      <ul>
                        <li><a href="grid.html">Polo Shirts</a></li>
                        <li><a href="grid.html">Shirts</a></li>
                        <li><a href="grid.html">Big &amp; Tall</a></li>
                        <li><a href="grid.html">Jeans</a></li>
                        <li><a href="grid.html">Sweaters</a></li>
                      </ul>
                    </li>
                    <li><a href="grid.html">Electronics</a></li>
                    <li><a href="grid.html">Furniture</a></li>
                    <li><a href="grid.html">Sale</a></li>
                  </ul>
                </div>
                <div class="col-xs-6 col-sm-3 col-md-3 col-lg-4">
                  <ul class="simple-list arrow-list bold-list">
                    <li><a href="shopping_cart.html">Shopping Cart</a></li>
                    <li> <a href="login.html">My Account</a>
                      <ul>
                        <li><a href="login.html">My Account</a></li>
                        <li><a href="#">Order history</a></li>
                        <li><a href="#">Advanced search</a></li>
                        <li><a href="#">Reviews</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">Customer service</a>
                      <ul>
                        <li><a href="#">Online support</a></li>
                        <li><a href="#">Help & FAQs</a></li>
                        <li><a href="#">Call Center</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">Information</a>
                      <ul>
                        <li><a href="about_us.html">About Us</a></li>
                        <li><a href="#">Shipping &amp; Returns</a></li>
                        <li><a href="#">Privacy Notice</a></li>
                        <li><a href="#">Conditions of Use</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                
              </div>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
    <!-- Footer -->
 	<%@ include file="common/footer.jsp" %> 
    <!-- End Footer -->
</div>
<!-- mobile-menu -->
<%@ include file="common/mobile_menu.jsp" %>
<!-- End Footer --> 

<!-- JavaScript --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/revslider.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/common.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
</body>
</html>