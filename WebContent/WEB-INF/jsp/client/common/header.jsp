<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!-- Header -->
<header>
	<div class="header-container">
		<div class="container">
			<div class="row">
				<!-- Header Language -->
				<div class="col-xs-12 col-sm-4 col-md-6 col-lg-6 pull-left">
					<div class="welcome-msg">欢迎访问医疗管理系统！</div>
				</div>
				<!-- Header Top Links -->
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-lg-6 pull-right hidden-xs">
					<div class="toplinks">
						<div class="links">
							<div class="check">
								<a title="Checkout"
									href="${pageContext.request.contextPath}/about_us"><span
									class="hidden-xs"> 关于我们 </span></a>
							</div>
							<div class="check">
								<a title="Checkout"
									href="${pageContext.request.contextPath}/contact_us"><span
									class="hidden-xs"> 联系我们 </span></a>
							</div>
							<c:choose>
								<c:when test="${empty loginer }">
									<div class="login">
										<a href="${pageContext.request.contextPath}/login"><span
											class="hidden-xs">登录</span></a>
									</div>
									<div class="login">
										<a href="${pageContext.request.contextPath}/regist"><span
											class="hidden-xs">注册</span></a>
									</div>
								</c:when>
								<c:otherwise>
									<div class="login">
										<span class="hidden-xs">&nbsp;&nbsp;&nbsp;欢迎你，${loginer.userAlice }</span>
									</div>
									<!-- 下拉列表 登录后显示  -->
									<div class="dropdown block-company-wrapper hidden-xs">
										<a role="button" data-toggle="dropdown" data-target="#"
											class="block-company dropdown-toggle" href="#">个人中心<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li role="presentation"><a
												href="${pageContext.request.contextPath}/cserver/viewuser">用户设置</a></li>
											<li role="presentation"><a 
												href="${pageContext.request.contextPath}/cartlist">购物车</a> </li>
											<li role="presentation"><a
												href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
											<li role="presentation"><a
												href="${pageContext.request.contextPath}/orderlist">我的订单</a></li> 
											<li role="presentation"><a
												href="${pageContext.request.contextPath}/clientXF/alter_password">修改密码</a></li>
										</ul>
									</div>
									<!-- 下拉列表 -->
									<div class="login">
										<a href="${pageContext.request.contextPath}/login_out"> <span
											class="hidden-xs">登出</span></a>
									</div>
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
				<div class="logo">
					<a title="Qualis" href="${pageContext.request.contextPath}/index"><img
						alt="Qualis"
						src="${pageContext.request.contextPath}/statics/images/logo.png">
					</a>
				</div>
				<!-- End Header Logo -->
			</div>
			<div
				class="col-lg-7 col-md-6 col-sm-6 col-xs-3 hidden-xs category-search-form">
				<div class="contact-row">
					<div class="phone inline">
						<i class="fa fa-phone"></i> (+800) 123 456 7890
					</div>
					<div class="contact inline">
						<i class="fa fa-envelope"></i> contact@<span class="le-color">oursupport.com</span>
					</div>
				</div>
				<div class="search-box">
					<form id="search_mini_form" action="${pageContext.request.contextPath}/search" method="post">
						<!-- Autocomplete End code -->
						<input id="search" type="text" name="goodsName"
							value="商品名称" class="searchbox"
							maxlength="128">
						<ul class="categories-filter animate-dropdown">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="category.jsp">商品分类 <b
									class="caret"></b></a>
								<ul class="dropdown-menu" role="menu">
									<c:forEach items="${category }" var="ctg">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="${pageContext.request.contextPath}/grid?categoryId=${ctg.categoryId}">
												<i class="fa fa-long-arrow-right" aria-hidden="true"></i>${ctg.category}</a>
										</li>
									</c:forEach> 
								</ul></li>
						</ul>
						<button type="submit" title="Search" class="search-btn-bg"
							id="submit-button"></button>
					</form>
				</div>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 card_wishlist_area">
				<div class="mm-toggle-wrap">
					<div class="mm-toggle">
						<i class="fa fa-align-justify"></i><span class="mm-label">菜单</span>
					</div>
				</div>
				
				
				<div class="top-cart-contain">
					<!-- Top Cart -->
					<div class="mini-cart">
						<div data-toggle="dropdown" data-hover="dropdown"
							class="basket dropdown-toggle">
							<a href="shopping_cart.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span> <span
								class="cart_count">买</span>
								<div class="price">&nbsp;&nbsp;&nbsp;&nbsp;</div> </a>
						</div>
						<c:if test="${!empty loginer }">
						<div>
							<div class="top-cart-content">
								<!--block-subtitle-->
								<ul class="mini-products-list" id="cart-sidebar">
								<c:forEach items="${cartlist}" var="cartlist">
									<li class="item first">
										<div class="item-inner">
											<a class="product-image" title="Retis lapen casen" href="${pageContext.request.contextPath}/product_detail/${cartlist.goodsId}"><img
												alt="Retis lapen casen" src="${pageContext.request.contextPath}/statics/file/${cartlist.gPhoto}">
											</a>
											<div class="product-details"> 
												<!--access-->
												<strong >${cartlist.goodsNumber}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="price">￥${cartlist.goodsPrice}</span>
												<p class="product-name">
													<a href="#" style="cursor:hand">${cartlist.goodsName}</a>
												</p>
											</div>
										</div>
									</li>
									<c:set var="zjg" value="${sum+cartlist.goodsPrice*cartlist.goodsNumber}"></c:set>
									</c:forEach>
								</ul>
								<!--actions-->
								<div class="actions">
									<a href="${pageContext.request.contextPath}/orderlist" style="text-align: center;margin-right: 10px;" class="btn-checkout" title="查看订单" type="button">
										<span>查看订单</span>
									</a>
									<a href="${pageContext.request.contextPath}/cartlist" style="text-align: center;" class="btn-checkout" title="去购物车" >
										<span>购物车</span>
									</a>
								</div>
							</div>
						</div>
						</c:if>
					</div>
					<!-- Top Cart -->
					<div id="ajaxconfig_info" style="display: none">
						<a href="#/"></a> <input value="" type="hidden"> <input
							id="enable_module" value="1" type="hidden"> <input
							class="effect_to_cart" value="1" type="hidden"> <input
							class="title_shopping_cart" value="Go to shopping cart"
							type="hidden">
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
							<h3>
								<i class="fa fa-heartbeat"></i>所有商品分类
							</h3>
						</div>
						<div class="mega-menu-category">
							<ul class="nav">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="${pageContext.request.contextPath}/list">
										<i class="fa fa-long-arrow-right" aria-hidden="true"></i>全部商品</a>
								</li>
								<c:forEach items="${category }" var="ctg">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="${pageContext.request.contextPath}/grid?categoryId=${ctg.categoryId}">
											<i class="fa fa-long-arrow-right" aria-hidden="true"></i>${ctg.category}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- features box -->
			<div class="our-features-box hidden-xs">
				<div class="features-block">
					<div class="col-lg-9 col-md-9 col-xs-12 col-sm-9 offer-block">
						<a href="#">New Arrivals</a> <a href="#">Special</a> <a href="#">Value
							of the day</a> <a href="#">Gift Cards</a> <a href="#">Todays
							Deals</a> <span>Free Worldwide Delivery</span>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>
<!-- end header --> 