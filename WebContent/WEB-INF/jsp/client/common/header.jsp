<%@ page language="java" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!-- Header -->
  <header>
   <div class="header-container">
      <div class="container">
        <div class="row"> 
          <!-- Header Language -->
          <div class="col-xs-12 col-sm-4 col-md-6 col-lg-6 pull-left">
            <div class="dropdown block-language-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="${pageContext.request.contextPath}/statics/images/english.png" alt="language"> English <span class="caret"></span> </a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"> <a href="#"><img src="${pageContext.request.contextPath}/statics/images/english.png" alt="language"> English </a> </li>
                <li role="presentation"> <a href="#"><img src="${pageContext.request.contextPath}/statics/images/francais.png" alt="language"> French </a> </li>
                <li role="presentation"> <a href="#"><img src="${pageContext.request.contextPath}/statics/images/german.png" alt="language"> German </a> </li>
              </ul>
            </div>
            <!-- End Header Language --> 
            <!-- Header Currency -->
            <div class="dropdown block-currency-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a href="#"> $ - Dollar </a> </li>
                <li role="presentation"><a href="#"> £ - Pound </a> </li>
                <li role="presentation"><a href="#"> € - Euro </a> </li>
              </ul>
            </div>
            <!-- End Header Currency -->
            <div class="welcome-msg"> Default welcome msg! </div>
          </div>
          <!-- Header Top Links -->
          <div class="col-xs-12 col-sm-8 col-md-6 col-lg-6 pull-right hidden-xs">
            <div class="toplinks">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="login.jsp"><span class="hidden-xs">My Account</span></a> </div>
                <div class="check"><a title="Checkout" href="checkout.jsp"><span class="hidden-xs">Checkout</span></a> </div>
                <div class="check"><a title="Checkout" href="wishlist.jsp"><span class="hidden-xs">Wishlist</span></a> </div>
                <div class="demo"><a title="Blog" href="blog.jsp"><span class="hidden-xs">Blog</span></a> </div>
                <!-- Header Company -->
                <div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#"> Company <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li role="presentation"><a href="about_us.jsp"> About Us </a> </li>
                    <li role="presentation"><a href="#"> Customer Service </a> </li>
                    <li role="presentation"><a href="#"> Privacy Policy </a> </li>
                    <li role="presentation"><a href="sitemap.jsp">Site Map </a> </li>
                    <li role="presentation"><a href="#">Search Terms </a> </li>
                    <li role="presentation"><a href="#">Advanced Search </a> </li>
                  </ul>
                </div>
                <!-- End Header Company -->
                <c:choose>
	    			<c:when test="${empty loginer }">
	    				<div class="login"><a href="${pageContext.request.contextPath}/login"><span class="hidden-xs">登录</span></a> </div>
	               	    <div class="login"><a href="${pageContext.request.contextPath}/regist"><span class="hidden-xs">注册</span></a> </div>
	    			</c:when>
	    			<c:otherwise>
	    				<div class="login"><span class="hidden-xs">欢迎你，${loginer.userAlice }</span></div>
	               	    <div class="login"><a href="${pageContext.request.contextPath}/login_out"> <span class="hidden-xs">登出</span></a> </div>
	    			</c:otherwise>
	    		</c:choose>
              </div>
            </div>
            <!-- End Header Top Links --> 
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 logo-block"> 
          <!-- Header Logo -->
          <div class="logo"> <a title="Qualis" href="index.jsp"><img alt="Qualis" src="${pageContext.request.contextPath}/statics/images/logo.png"> </a> </div>
          <!-- End Header Logo --> 
        </div>
        <div class="col-lg-7 col-md-6 col-sm-6 col-xs-3 hidden-xs category-search-form">
        <div class="contact-row">
                            <div class="phone inline">
                                <i class="fa fa-phone"></i> (+800) 123 456 7890
                            </div>
                            <div class="contact inline">
                                <i class="fa fa-envelope"></i> contact@<span class="le-color">oursupport.com</span>
                            </div>
                        </div>
          <div class="search-box">
            <form id="search_mini_form" action="#" method="get">
              <!-- Autocomplete End code -->
              <input id="search" type="text" name="q" value="Search entire store here..." class="searchbox" maxlength="128">
              <ul class="categories-filter animate-dropdown">
                  <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="category.jsp">Categories <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu" >
                      <li class="menu-header">Computer</li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.jsp">- Clothing</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.jsp">- Electronics</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.jsp">- Shoes</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.jsp">- Watches</a></li>
                    </ul>
                  </li>
                </ul>
              <button type="submit" title="Search" class="search-btn-bg" id="submit-button"></button>
            </form>
          </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 card_wishlist_area">
          <div class="mm-toggle-wrap">
            <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span> </div>
          </div>
          <div class="top-cart-contain"> 
            <!-- Top Cart -->
            <div class="mini-cart">
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="shopping_cart.jsp"><span>Shopping Cart</span> <span class="cart_count">2</span>
              <div class="price">$4580</div>
               </a> </div>
              <div>
                <div class="top-cart-content"> 
                  <!--block-subtitle-->
                  <ul class="mini-products-list" id="cart-sidebar">
                    <li class="item first">
                      <div class="item-inner"> <a class="product-image" title="Retis lapen casen" href="#l"><img alt="Retis lapen casen" src="products-images/product4.jpg"> </a>
                        <div class="product-details">
                          <div class="access"><a class="btn-remove1" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                          <!--access--><strong>1</strong> x <span class="price">$179.99</span>
                          <p class="product-name"><a href="#">Retis lapen casen...</a> </p>
                        </div>
                      </div>
                    </li>
                    <li class="item last">
                      <div class="item-inner"> <a class="product-image" title="Retis lapen casen" href="product_detail.jsp"><img alt="Retis lapen casen" src="products-images/product3.jpg"> </a>
                        <div class="product-details">
                          <div class="access"><a class="btn-remove1" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                          <!--access--><strong>1</strong> x <span class="price">$80.00</span>
                          <p class="product-name"><a href="#">Retis lapen casen...</a> </p>
                        </div>
                      </div>
                    </li>
                  </ul>
                  <!--actions-->
                  <div class="actions">
                    <button class="btn-checkout" title="Checkout" type="button"><span>Checkout</span> </button>
                    <a href="shopping_cart.jsp" class="view-cart"><span>View Cart</span></a> </div>
                </div>
              </div>
            </div>
            <!-- Top Cart -->
            <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
          </div>
          <!-- thm wishlist --> 
        </div>
      </div>
    </div>
    <nav class="hidden-xs">
      <div class="nav-container">
        <div class="col-md-3 col-xs-12 col-sm-3">
          <div class="mega-container visible-lg visible-md visible-sm">
            <div class="navleft-container">
              <div class="mega-menu-title">
                <h3><i class="fa fa-heartbeat"></i> All Categories</h3>
              </div>
              <div class="mega-menu-category">
                <ul class="nav">
                  <li class="dropdown"> <a href="index.jsp" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Layout</a>
                    <div class="dropdown-menu wrap-popup column1">
                      <div class="popup">
                        <ul class="nav">
                          <li><a href="index.jsp">Home Version 1</a></li>
                          <li><a href="../home2/index.jsp">Home Version 2</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Pages</a>
                    <div class="dropdown-menu wrap-popup">
                      <div class="popup">
                        <div class="row">
                          <div class="col-sm-4">
                            <ul class="nav">
                              <li><a href="grid.jsp"><span>Products Grid</span></a> </li>
                              <li> <a href="list.jsp"> <span>Products List</span> </a> </li>
                              <li> <a href="product_detail.jsp"> <span>Product Detail</span> </a> </li>
                              <li> <a href="shopping_cart.jsp"> <span>Shopping Cart</span> </a> </li>
                              <li><a href="checkout.jsp"><span>Checkout</span></a> </li>
                              <li> <a href="wishlist.jsp"> <span>Wishlist</span> </a> </li>
                              
                              
                            </ul>
                          </div>
                          <div class="col-sm-4">
                            <ul class="nav">
                              <li> <a href="faq.jsp"> <span>FAQ</span> </a> </li>
                              <li> <a href="login.jsp"> <span>Login</span> </a> </li>
                                <li> <a href="dashboard.jsp"> <span>Dashboard</span> </a> </li>
                              <li> <a href="multiple_addresses.jsp"> <span>Multiple Addresses</span> </a> </li>
                              <li><a href="compare.jsp"><span>Compare</span></a> </li>
                              <li> <a href="contact_us.jsp"> <span>Contact</span> </a> </li>
                              
                            </ul>
                          </div>
                          <div class="col-sm-4 has-sep">
                            <ul class="nav">
                              <li> <a href="about_us.jsp"> <span>About Us</span> </a> </li>
                              <li><a href="quick_view.jsp"><span>Quick View</span></a> </li>
                              <li><a href="newsletter.jsp"><span>Newsletter</span></a> </li>
                              <li><a href="404error.jsp"><span>404 Error Page</span></a> </li>
                              <li> <a href="Blog.jsp"> <span>Blog</span> </a> </li>
                              <li> <a href="blog_single_post.jsp"> <span>Blog Detail</span> </a> </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="dropdown has-sub wide"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Personal Care</a> 
                    <div class="dropdown-menu wrap-popup">
                      <div class="popup">
                        <div class="row">
                          <div class="col-md-4 col-sm-6">
                            <h3>Skin Care</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp"><span>Body Cream</span></a> </li>
                              <!--level2 nav-6-1-1-->
                              <li> <a href="grid.jsp"><span>Powders</span></a> </li>
                              <!--level2 nav-6-1-1-->
                              <li> <a href="grid.jsp"><span>Face Cream</span></a> </li>
                              <!--level2 nav-6-1-1-->
                              <li> <a href="grid.jsp"><span>Face Wash</span></a> </li>
                              <!--level2 nav-6-1-1-->
                            </ul>
                            <br>
                            <h3>Hair Care</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp">Shampoos</a> </li>
                              <li> <a href="grid.jsp">Conditioners</a> </li>
                              <li> <a href="grid.jsp">Herbals</a> </li>
                              <li> <a href="grid.jsp">Oils & Treatments</a> </li>
                            </ul>
                          </div>
                          <div class="col-md-4 col-sm-6 has-sep">
                            <h3>Oral Care</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp">Mouth Wash</a> </li>
                              <li> <a href="grid.jsp">Tooth Aids</a> </li>
                              <li> <a href="grid.jsp">Tooth Paste</a> </li>
                              <li> <a href="grid.jsp">Antiseptic Gel</a> </li>
                            </ul>
                            <br>
                            <h3>Sanitary & Hygiene</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp">Sanitary Napkins</a> </li>
                              <li> <a href="grid.jsp">Feminine Aids</a> </li>
                              <li> <a href="grid.jsp">Hand Wash</a> </li>
                              <li> <a href="grid.jsp">Sanitizers</a> </li>
                            </ul>
                          </div>
                          <div class="col-md-4 has-sep hidden-sm">
                            <div class="custom-menu-right">
                              <div class="box-banner media">
                                <div class="add-right"><img src="${pageContext.request.contextPath}/statics/images/menu-img1.jpg"  alt=""></div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Health & Nutrition</a>
                    <div class="dropdown-menu wrap-popup">
                      <div class="popup">
                        <div class="row">
                          <div class="col-md-4 col-sm-6">
                            <h3>Health Drinks</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp">Children</a> </li>
                              <li> <a href="grid.jsp">Diabetic Drinks</a> </li>
                              <li> <a href="grid.jsp">Glucose Powder</a> </li>
                              <li> <a href="grid.jsp">Men & Women</a> </li>
                            </ul>
                            <br>
                            <h3>Nutritional Foods</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp"><span>Chywanprash</span></a> </li>
                              <li> <a href="grid.jsp"><span>Energy Drinks</span></a> </li>
                              <li> <a href="grid.jsp"><span>Honey</span></a> </li>
                              <li> <a href="grid.jsp"><span>Herbal Foods</span></a> </li>
                            </ul>
                          </div>
                          <div class="col-md-4 col-sm-6 has-sep">
                            <h3>Breakfast Cereals</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp"><span>Cereal Basics</span></a> </li>
                              <li> <a href="grid.jsp"><span>Sugar & Carbs</span></a> </li>
                              <li> <a href="grid.jsp"><span>Misleading Claims</span></a> </li>
                              <li> <a href="grid.jsp"><span>Better Breakfasts</span></a> </li>
                            </ul>
                            <br>
                            <h3>Weight Management</h3>
                            <ul class="nav">
                              <li> <a href="grid.jsp"><span>Weight Gain Diet</span></a> </li>
                              <li> <a href="grid.jsp"><span>Weight Loss Diet</span></a> </li>
                              <li> <a href="grid.jsp"><span>Atkins Diet</span></a> </li>
                              <li> <a href="grid.jsp"><span>Low Carbs Diet</span></a> </li>
                            </ul>
                          </div>
                          <div class="col-md-4 has-sep hidden-sm">
                            <div class="custom-menu-right">
                              <div class="box-banner media">
                                <div class="add-right"><img src="${pageContext.request.contextPath}/statics/images/menu-img2.jpg" alt=""></div>
                              </div>
                              <div class="box-banner media">
                                <div class="add-right"><img src="${pageContext.request.contextPath}/statics/images/menu-img3.jpg" alt=""></div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="nosub"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Equipments</a></li>
                  <li class="nosub"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Diabetic</a></li>
                  <li class="nosub"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Radiology</a></li>
                  <li class="dropdown more-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Devices</a>
                    <div class="dropdown-menu wrap-popup column1">
                      <div class="popup">
                        <ul class="nav">
                          <li><a href="grid.jsp">Thermometers</a></li>
                          <li><a href="grid.jsp">Electric Massagers</a></li>
                          <li><a href="grid.jsp">Allergy</a></li>
                          <li><a href="grid.jsp">Sinus & Asthma</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="dropdown more-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Vitamins</a>
                    <div class="dropdown-menu wrap-popup column1">
                      <div class="popup">
                        <ul class="nav">
                          <li> <a href="grid.jsp"> Sports Supplements </a> </li>
                          <li> <a href="grid.jsp"> Herbal Supplements</a> </li>
                          <li> <a href="grid.jsp"> Vitamins & Minerals </a> </li>
                          <li> <a href="grid.jsp"> Jamieson </a> </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="nosub custom-offer"><a href="#"><i class="fa fa-star"></i> Deal of the day</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- features box -->
        <div class="our-features-box hidden-xs">
          <div class="features-block">
            <div class="col-lg-9 col-md-9 col-xs-12 col-sm-9 offer-block"> <a href="#">New Arrivals</a> <a href="#">Special</a> <a href="#">Value of the day</a> <a href="#">Gift Cards</a> <a href="#">Todays Deals</a> <span>Free Worldwide Delivery</span> </div>
          </div>
        </div>
      </div>
    </nav>
  </header>
  <!-- end header -->
 