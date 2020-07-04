<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />
<title>首页</title>
<!-- Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/simple-line-icons.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/revslider.css">
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

</head>
<body class="cms-index-index cms-home-page home">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->
		
		<!-- container-fluid 开始     轮播-->
		<%@ include file="common/container_fluid.jsp"%>
		<!-- container-fluid 结束 -->
		
		<!-- section-element container 开始 -->
		<%@ include file="common/section_element container.jsp"%>
		<!-- section-element container 结束 -->
		
		<div class="container">
			<div class="content-page">

				<!-- featured category -->
				<div class="category-product">
					<div class="navbar nav-menu">
						<div class="navbar-collapse">
							<h1>产品展示</h1>
							<ul class="nav navbar-nav">
								<li class="active"><a data-toggle="tab" href="#tab-1">热卖推荐</a></li>
								<li class=""><a data-toggle="tab" href="#tab-2">新品推荐</a></li>
								<li class=""><a data-toggle="tab" href="#tab-3" class="active">今日特惠</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->

					</div>
					<div class="product-bestseller">
						<div class="product-bestseller-content">
							<div class="product-bestseller-list">
								<div class="tab-container">
								<!-- 热卖推荐 -->
									<div class="tab-panel active" id="tab-1">
										<div class="category-products">
											<ul class="products-grid">
												<c:forEach var="remai" items="${remaiList }" varStatus="status">
													<li class="item col-lg-3 col-md-3 col-sm-3 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" href="product_detail.html">
																		<img alt=""
																		src="${pageContext.request.contextPath}/statics/products-images/${remai.goodsPhoto}">
																	</a>
																	<div class="sale-label sale-top-right">- 40%</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a>
																			</li>
																			<li><a class="link-compare" href="compare.html"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a href="product_detail.html">${remai.goodsName}</a>
																	</div>
																	<div class="brand">Datsun</div>
																	<div class="rating">
																		<div class="ratings">
																			<div class="rating-box">
																				<div style="width: 80%" class="rating"></div>
																			</div>
																			<p class="rating-links">
																				<a href="#">1 Review(s)</a> <span class="separator">|</span>
																				<a href="#">Add Review</a>
																			</p>
																		</div>
																	</div>
																	<div class="item-content">
																		<div class="item-price">
																			<div class="price-box">
																				<span class="regular-price"> <span
																					class="price">￥${remai.goodsPrice}</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title=""
																				data-original-title="Add to Cart">
																				<i class="fa fa-shopping-basket"></i>
																			</button>
																		</div>
																	</div>
																</div>
															</div>
														</div> <!-- End  Item inner-->
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								<!-- 热卖推荐 -->
								<!-- 新品推荐 -->
									<div class="tab-panel " id="tab-2">
										<div class="category-products">
											<ul class="products-grid">
											<c:forEach var="xinpin" items="${xinpinList }" varStatus="status">
												<li class="item col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<div class="item-inner">
														<div class="item-img">
															<div class="item-img-info">
																<a class="product-image" href="product_detail.html">
																	<img alt="" src="${pageContext.request.contextPath}/statics/products-images/${xinpin.goodsPhoto }">
																</a>

																<div class="box-hover">
																	<ul class="add-to-links">
																		<li><a class="link-quickview"
																			href="quick_view.html"></a></li>
																		<li><a class="link-wishlist" href="wishlist.html"></a>
																		</li>
																		<li><a class="link-compare" href="compare.html"></a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="item-info">
															<div class="info-inner">
																<div class="item-title">
																	<a href="product_detail.html">${xinpin.goodsName }</a>
																</div>
																<div class="brand">Impulse</div>
																<div class="rating">
																	<div class="ratings">
																		<div class="rating-box">
																			<div style="width: 80%" class="rating"></div>
																		</div>
																		<p class="rating-links">
																			<a href="#">1 Review(s)</a> <span class="separator">|</span>
																			<a href="#">Add Review</a>
																		</p>
																	</div>
																</div>
																<div class="item-content">
																	<div class="item-price">
																		<div class="price-box">
																			<span class="regular-price"> <span
																				class="price">￥${xinpin.goodsPrice }</span>
																			</span>
																		</div>
																	</div>
																	<div class="action">
																		<button class="button btn-cart" type="button" title=""
																			data-original-title="Add to Cart">
																			<i class="fa fa-shopping-basket"></i>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div> <!-- End  Item inner-->
												</li>
											</c:forEach>	
											</ul>
										</div>
									</div>
								<!-- 新品推荐 -->
								<!-- 今日特惠 -->
									<div class="tab-panel " id="tab-3">
										<div class="category-products">
											<ul class="products-grid">
												<c:forEach var="tehui" items="${tehuiList }" varStatus="status">
													<li class="item col-lg-3 col-md-3 col-sm-3 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Retis lapen casen"
																		href="product_detail.html"> <img alt=""
																		src="${pageContext.request.contextPath}/statics/products-images/${tehui.goodsPhoto}">
																	</a>
	
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a>
																			</li>
																			<li><a class="link-compare" href="compare.html"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.html">${tehui.goodsName }</a>
																	</div>
																	<div class="brand">Cello</div>
																	<div class="rating">
																		<div class="ratings">
																			<div class="rating-box">
																				<div style="width: 80%" class="rating"></div>
																			</div>
																			<p class="rating-links">
																				<a href="#">1 Review(s)</a> <span class="separator">|</span>
																				<a href="#">Add Review</a>
																			</p>
																		</div>
																	</div>
																	<div class="item-content">
																		<div class="item-price">
																			<div class="price-box">
																				<span class="regular-price"> <span
																					class="price">￥${tehui.goodsPrice }</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title=""
																				data-original-title="Add to Cart">
																				<i class="fa fa-shopping-basket"></i>
																			</button>
																		</div>
																	</div>
																</div>
															</div>
														</div> <!-- End  Item inner-->
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								<!-- 今日特惠 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="wide-banner">
				<div class="row">
					<div
						class="figure banner-with-effects effect-sadie1 banner-width  with-button">
						<img
							src="${pageContext.request.contextPath}/statics/images/watch.jpg"
							alt="">

					</div>
					<div
						class="figure banner-with-effects effect-sadie1 banner-width  with-button">
						<img
							src="${pageContext.request.contextPath}/statics/images/shoes-banner.jpg"
							alt="">

					</div>
				</div>
			</div>
		</div>
		<section class="deals-block">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<h2>Deal of the day</h2>
						<div class="hot-deal">

							<ul class="products-grid">
								<li class="right-space two-height item">
									<div class="item-inner">
										<div class="item-info">
											<div class="info-inner">
												<div class="item-title">
													<a href="product_detail.html" title="Retis lapen casen">Covmed
														60S Tablets for corona</a>
												</div>
												<div class="brand">Xperia</div>
												<div class="item-content">
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div class="rating" style="width: 80%"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-price">
														<div class="price-box">
															<span class="regular-price"> <span class="price">$125.00</span>
															</span> <span class="old-price"><span class="price">$199.00</span></span>
														</div>
													</div>
													<div class="box-timer">
														<div class="countbox_1 timer-grid"></div>
													</div>
													<div class="offer-text">Hurry Up! Limited time offer</div>
												</div>
											</div>
										</div>
										<div class="item-img">
											<div class="item-img-info">
												<a href="#" title="Retis lapen casen" class="product-image">
													<img
													src="${pageContext.request.contextPath}/statics/products-images/product1.jpg"
													alt="Retis lapen casen">
												</a>
												<div class="hot-label hot-top-left">Hot Deal</div>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a class="link-quickview" href="quick_view.html"></a>
														</li>
														<li><a class="link-wishlist" href="wishlist.html"></a>
														</li>
														<li><a class="link-compare" href="compare.html"></a>
														</li>
													</ul>
												</div>

											</div>
										</div>

									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="testimonials">
							<div class="ts-testimonial-widget">
								<div class="slider-items-products">
									<div id="testimonials-slider"
										class="product-flexslider hidden-buttons home-testimonials">
										<div
											class="slider-items slider-width-col4 fadeInUp owl-carousel owl-theme"
											style="opacity: 1; display: block;">
											<div class="owl-item">
												<div class="holder">
													<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
														elit, Lid est laborum dolo rumes fugats untras. dolore
														magna aliquam erat volutpat. Aenean est auctorwisiet
														urna...</p>
													<div class="testimonial-arrow-down"></div>
													<div class="thumb">
														<div class="customer-img">
															<img
																src="${pageContext.request.contextPath}/statics/images/member2.png"
																alt="Saraha Smith">
														</div>
														<div class="customer-bio">
															<strong class="name">Saraha Smith</strong> <span>Happy
																Customer</span>
														</div>
													</div>
												</div>
											</div>
											<div class="owl-item">
												<div class="holder">
													<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
														elit, Lid est laborum dolo rumes fugats untras. dolore
														magna aliquam erat volutpat. Aenean est auctorwisiet
														urna...</p>
													<div class="testimonial-arrow-down"></div>
													<div class="thumb">
														<div class="customer-img">
															<img
																src="${pageContext.request.contextPath}/statics/images/member1.png"
																alt="Stephen Doe">
														</div>
														<div class="customer-bio">
															<strong class="name">Stephen Doe</strong> <span>Happy
																Customer</span>
														</div>
													</div>
												</div>
											</div>
											<div class="owl-item">
												<div class="holder">
													<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
														elit, Lid est laborum dolo rumes fugats untras. dolore
														magna aliquam erat volutpat. Aenean est auctorwisiet
														urna...</p>
													<div class="testimonial-arrow-down"></div>
													<div class="thumb">
														<div class="customer-img">
															<img
																src="${pageContext.request.contextPath}/statics/images/member3.png"
																alt="Mark doe">
														</div>
														<div class="customer-bio">
															<strong class="name">Mark doe</strong> <span>Happy
																Customer</span>
														</div>
													</div>
												</div>
											</div>


										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 最畅销 -->
		<div class="container">
			<div class="bestsell-pro">
				<div>
					<div class="slider-items-products">
						<div class="bestsell-block">
							<div class="block-title">
								<h2> </h2>
							</div>
							<div id="bestsell-slider"
								class="product-flexslider hidden-buttons">
								<div
									class="slider-items slider-width-col4 products-grid block-content">
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product12.jpg">
													</a>
													<div class="new-label new-top-left">new</div>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Linen</div>
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 80%" class="rating"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-content">
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$88.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Item -->
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product11.jpg">
													</a>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Vincent</div>
													<div class="item-content">
														<div class="rating">
															<div class="ratings">
																<div class="rating-box">
																	<div style="width: 80%" class="rating"></div>
																</div>
																<p class="rating-links">
																	<a href="#">1 Review(s)</a> <span class="separator">|</span>
																	<a href="#">Add Review</a>
																</p>
															</div>
														</div>
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$325.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product10.jpg">
													</a>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">justrin</div>
													<div class="item-content">
														<div class="rating">
															<div class="ratings">
																<div class="rating-box">
																	<div style="width: 80%" class="rating"></div>
																</div>
																<p class="rating-links">
																	<a href="#">1 Review(s)</a> <span class="separator">|</span>
																	<a href="#">Add Review</a>
																</p>
															</div>
														</div>
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$245.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Item -->
									<div class="item">

										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="products-images/product6.jpg">
													</a>
													<div class="new-label new-top-left">new</div>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Cello</div>
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 80%" class="rating"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-content">
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$88.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Item -->
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product8.jpg">
													</a>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Zacharias</div>
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 80%" class="rating"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-content">
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$88.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Item -->
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product7.jpg">
													</a>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Cello</div>
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 80%" class="rating"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-content">
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$88.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Item -->
									<div class="item">
										<div class="item-inner">
											<div class="item-img">
												<div class="item-img-info">
													<a class="product-image" title="Retis lapen casen"
														href="product_detail.html"> <img alt=""
														src="${pageContext.request.contextPath}/statics/products-images/product6.jpg">
													</a>
													<div class="box-hover">
														<ul class="add-to-links">
															<li><a class="link-quickview" href="quick_view.html"></a>
															</li>
															<li><a class="link-wishlist" href="wishlist.html"></a>
															</li>
															<li><a class="link-compare" href="compare.html"></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title">
														<a title="Retis lapen casen" href="product_detail.html">Covmed
															Mystone 60S Tablets for covid-19</a>
													</div>
													<div class="brand">Linen</div>
													<div class="rating">
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 80%" class="rating"></div>
															</div>
															<p class="rating-links">
																<a href="#">1 Review(s)</a> <span class="separator">|</span>
																<a href="#">Add Review</a>
															</p>
														</div>
													</div>
													<div class="item-content">
														<div class="item-price">
															<div class="price-box">
																<span class="regular-price"> <span class="price">$88.00</span>
																</span>
															</div>
														</div>
														<div class="action">
															<button class="button btn-cart" type="button" title=""
																data-original-title="Add to Cart">
																<i class="fa fa-shopping-basket"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Item -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Latest Blog -->
 	<!-- 订阅电子报 -->
	 	<section class="home-articles spacer-medium">
			<div class="container css-grid--columns-2">
				<div class="column-left">




					<div class="article-home">
						<div class="article-home__image parallax-parent">
							<img src="images/Sophie_editorail-16_500x.jpg"
								class="parallax-child--second" alt="article image">
						</div>
						<div class="article-home__content">
							<div class="inside">
								<p class="date">June 01, 2018</p>
								<h4 class="title">Powerful and flexible Ecommerce Theme</h4>
								<a href="#" class="link">Read more <i
									class="fa fa-chevron-circle-right"></i></a>
							</div>
						</div>
					</div>




					<div class="article-home">
						<div class="article-home__image parallax-parent">
							<img src="images/drake_500x.jpg" class="parallax-child--second"
								alt="article image">
						</div>
						<div class="article-home__content">
							<div class="inside">
								<p class="date">June 07, 2018</p>
								<h4 class="title">unlimited colors with good design</h4>
								<a href="#" class="link">Read more <i
									class="fa fa-chevron-circle-right"></i></a>
							</div>
						</div>
					</div>



				</div>

				<div class="column-right">




					<div class="article-home">
						<div class="article-home__image parallax-parent">
							<img src="images/BLOG_2_square_1000x.jpg"
								class="parallax-child--second" alt="article image">
						</div>
						<div class="article-home__content">
							<div class="inside">
								<p class="date">June 14, 2018</p>
								<h4 class="title">Awesome template with lot's of features</h4>
								<a href="#" class="link">Read more <i
									class="fa fa-chevron-circle-right"></i></a>
							</div>
						</div>
					</div>

				</div>

			</div>

		</section> 
	<!-- 订阅电子报 -->
		<!-- End Latest Blog -->
		<!-- Footer -->
		<%@ include file="common/footer.jsp"%>
		<!-- End Footer -->
	</div>
	<!-- mobile-menu -->
	<%@ include file="common/mobile_menu.jsp"%>
	<!-- JavaScript -->
	<script
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/revslider.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/countdown.js"></script>
	<script>
		jQuery(document).ready(function() {
			jQuery('#rev_slider_4').show().revolution({
				dottedOverlay : 'none',
				delay : 5000,
				startwidth : 1170,
				startheight : 510,

				hideThumbs : 200,
				thumbWidth : 200,
				thumbHeight : 50,
				thumbAmount : 2,

				navigationType : 'thumb',
				navigationArrows : 'solo',
				navigationStyle : 'round',

				touchenabled : 'on',
				onHoverStop : 'on',

				swipe_velocity : 0.7,
				swipe_min_touches : 1,
				swipe_max_touches : 1,
				drag_block_vertical : false,

				spinner : 'spinner0',
				keyboardNavigation : 'off',

				navigationHAlign : 'center',
				navigationVAlign : 'bottom',
				navigationHOffset : 0,
				navigationVOffset : 20,

				soloArrowLeftHalign : 'left',
				soloArrowLeftValign : 'center',
				soloArrowLeftHOffset : 20,
				soloArrowLeftVOffset : 0,

				soloArrowRightHalign : 'right',
				soloArrowRightValign : 'center',
				soloArrowRightHOffset : 20,
				soloArrowRightVOffset : 0,

				shadow : 0,
				fullWidth : 'on',
				fullScreen : 'off',

				stopLoop : 'off',
				stopAfterLoops : -1,
				stopAtSlide : -1,

				shuffle : 'off',

				autoHeight : 'off',
				forceFullWidth : 'on',
				fullScreenAlignForce : 'off',
				minFullScreenHeight : 0,
				hideNavDelayOnMobile : 1500,

				hideThumbsOnMobile : 'off',
				hideBulletsOnMobile : 'off',
				hideArrowsOnMobile : 'off',
				hideThumbsUnderResolution : 0,

				hideSliderAtLimit : 0,
				hideCaptionAtLimit : 0,
				hideAllCaptionAtLilmit : 0,
				startWithSlide : 0,
				fullScreenOffsetContainer : ''
			});
		});
	</script>
	<!-- Hot Deals Timer 1-->
	<script>
		var dthen1 = new Date("12/25/17 11:59:00 PM");
		start = "08/04/15 03:02:11 AM";
		start_date = Date.parse(start);
		var dnow1 = new Date(start_date);
		if (CountStepper > 0)
			ddiff = new Date((dnow1) - (dthen1));
		else
			ddiff = new Date((dthen1) - (dnow1));
		gsecs1 = Math.floor(ddiff.valueOf() / 1000);

		var iid1 = "countbox_1";
		CountBack_slider(gsecs1, "countbox_1", 1);
	</script>
</body>
</html>
