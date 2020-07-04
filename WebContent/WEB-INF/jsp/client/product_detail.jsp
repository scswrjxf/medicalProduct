<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content=""> 
<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />
<title>产品详情</title>

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
<body class="category-page">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->
		<!-- Main Container -->
		<section class="main-container col1-layout">
			<div class="container">
				<div class="row">

					<!-- Breadcrumbs -->
					<div class="breadcrumbs">
						<ul>
							<li class="home"><a href="index.jsp" title="Go to Home Page">Home</a>
								<span>/</span></li>
							<li class="category1599"><a href="grid.jsp" title="">Women</a>
								<span>/ </span></li>
							<li class="category1600"><a href="grid.jsp" title="">Styliest
									Bag</a> <span>/</span></li>
							<li class="category1601"><strong>Clutch Handbags</strong></li>
						</ul>
					</div>
					<!-- Breadcrumbs End -->

					<div class="col-sm-12 col-xs-12">



						<article class="col-main">
							<div class="product-view">
								<div class="product-essential">
									<form action="#" method="post" id="product_addtocart_form">
										<input name="form_key" value="6UbXroakyQlbfQzK" type="hidden">
										<div class="product-img-box col-lg-5 col-sm-5 col-xs-12">
											<div class="new-label new-top-left">New</div>
											<div class="product-image">
												<div class="product-full">
													<img id="product-zoom"
														src="${pageContext.request.contextPath}/statics/products-images/${goodInfor.goodsPhoto}"
														data-zoom-image="${pageContext.request.contextPath}/statics/products-images/${goodInfor.goodsPhoto}"
														alt="product-image" />
												</div>
												<div class="more-views">
													<div class="slider-items-products">
														<div id="gallery_01"
															class="product-flexslider hidden-buttons product-img-thumb">
															<div class="slider-items slider-width-col4 block-content">
																<div class="more-views-items">
																	<a href="#"
																		data-image="${pageContext.request.contextPath}/statics/products-images/product1.jpg"
																		data-zoom-image="${pageContext.request.contextPath}/statics/products-images/product1.jpg">
																		<img id="product-zoom0"
																		src="${pageContext.request.contextPath}/statics/products-images/product1.jpg"
																		alt="product-image" />
																	</a>
																</div>
																<div class="more-views-items">
																	<a href="#"
																		data-image="${pageContext.request.contextPath}/statics/products-images/product3.jpg"
																		data-zoom-image="${pageContext.request.contextPath}/statics/products-images/product3.jpg">
																		<img id="product-zoom1"
																		src="${pageContext.request.contextPath}/statics/products-images/product3.jpg"
																		alt="product-image" />
																	</a>
																</div>
																<div class="more-views-items">
																	<a href="#"
																		data-image="${pageContext.request.contextPath}/statics/products-images/product4.jpg"
																		data-zoom-image="${pageContext.request.contextPath}/statics/products-images/product4.jpg">
																		<img id="product-zoom2"
																		src="${pageContext.request.contextPath}/statics/products-images/product4.jpg"
																		alt="product-image" />
																	</a>
																</div>
																<div class="more-views-items">
																	<a href="#"
																		data-image="${pageContext.request.contextPath}/statics/products-images/product5.jpg"
																		data-zoom-image="${pageContext.request.contextPath}/statics/products-images/product5.jpg">
																		<img id="product-zoom3"
																		src="${pageContext.request.contextPath}/statics/products-images/product5.jpg"
																		alt="product-image" />
																	</a>
																</div>
																<div class="more-views-items">
																	<a href="#"
																		data-image="${pageContext.request.contextPath}/statics/products-images/product6.jpg"
																		data-zoom-image="${pageContext.request.contextPath}/statics/products-images/product6.jpg">
																		<img id="product-zoom4"
																		src="${pageContext.request.contextPath}/statics/products-images/product6.jpg"
																		alt="product-image" />
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- end: more-images -->
										</div>
										<div class="product-shop col-lg- col-sm-7 col-xs-12">
											<div class="product-next-prev">
												<a class="product-next" href="#"><span></span></a> <a
													class="product-prev" href="#"><span></span></a>
											</div>
											<div class="brand">XPERIA</div>
											<div class="product-name">
												<h1>${goodInfor.goodsName }</h1>
											</div>
											<div class="ratings">
												<!-- 几颗星 20%一颗 -->
												<div class="rating-box">
													<div style="width: 80%" class="rating"></div>
												</div>
												<p class="rating-links">
													<a href="#">1 Review(s)</a> <span class="separator">|</span>
													<a href="#">Add Your Review</a>
												</p>
											</div>
											<div class="price-block">
												<div class="price-box">
													<p class="special-price">
														<span class="price">单价:</span> <span id="product-price-48"
															class="price">￥${goodInfor.goodsPrice }元 </span>
													</p>
													<p class="#">
														<span class="price-label">分类名：</span> <span>${goodInfor.categoryId.category }</span>
													</p> 
												</div>
											</div>
											<div class="add-to-box">
												<div class="add-to-cart">
													<div class="pull-left">
														<div class="custom pull-left">
															<button
																onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;"
																class="reduced items-count" type="button">
																<i class="fa fa-minus">&nbsp;</i>
															</button>
															<input type="text" class="input-text qty" title="Qty"
																value="1" maxlength="12" id="qty" name="qty">
															<button
																onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
																class="increase items-count" type="button">
																<i class="fa fa-plus">&nbsp;</i>
															</button>
														</div>
													</div>
													<button onClick="productAddToCartForm.submit(this)"
														class="button btn-cart" title="Add to Cart" type="button">加入购物车</button>
												</div>

											</div>

											<div class="email-addto-box">
												<ul class="add-to-links">
													<li><a class="link-wishlist" href="wishlist.jsp"><span>Add
																to Wishlist</span></a></li>
													<li><span class="separator">|</span> <a
														class="link-compare" href="compare.jsp"><span>Add
																to Compare</span></a></li>
												</ul>
												<p class="email-friend">
													<a href="#" class=""><span>Email to a Friend</span></a>
												</p>
											</div>
											<div class="social">
												<ul class="link">
													<li class="fb"><a href="#"></a></li>
													<li class="tw"><a href="#"></a></li>
													<li class="googleplus"><a href="#"></a></li>
													<li class="rss"><a href="#"></a></li>
													<li class="pintrest"><a href="#"></a></li>
													<li class="linkedin"><a href="#"></a></li>
													<li class="youtube"><a href="#"></a></li>
												</ul>
											</div>

											<ul class="shipping-pro">
												<li>全国免费送货</li>
												<li>30天退货</li>
											</ul>
										</div>
									</form>
								</div>
								<div class="product-collateral">
									<div class="add_info">
										<ul id="product-detail-tab" class="nav nav-tabs product-tabs">
											<li class="active"><a href="#product_tabs_description"
												data-toggle="tab">产品描述</a></li>
											<li><a href="#reviews_tabs" data-toggle="tab">评论</a>
											</li>
											<li><a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a></li> 
										</ul>
										<div id="productTabContent" class="tab-content">
											<div class="tab-pane fade in active"
												id="product_tabs_description">
												<div class="std">
													<img alt="" src="${pageContext.request.contextPath}/statics/images/shoes-img.jpg"
														style="float: right">
													<p>${goodInfor.goodsDesc}</p>
												</div>
											</div>
											<div class="tab-pane fade" id="reviews_tabs">
												<div class="woocommerce-Reviews">
													<!-- 获取该商品的所有评论 -->
													<div>
														<h2 class="woocommerce-Reviews-title"> ${goodInfor.goodsName}的所有评论 </h2>
														<ol class="commentlist">
															<c:forEach var="comment" items="${commentsList }">
																<li class="comment">
																	<div>
																		<img alt="" src="${pageContext.request.contextPath}/statics/images/${comment.uId.userPhoto}"
																			class="avatar avatar-60 photo">
																		<div class="comment-text">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 100%" class="rating"></div>
																				</div>
		
																			</div>
																			<p class="meta">
																				<strong>${comment.uId.userAlice}</strong> <span>&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${comment.commentDate}" pattern="yyyy年MM月dd日 HH:mm:ss"/></span>
																			</p>
																			<div class="description">
																				<p>${comment.commentMessage}</p>
																			</div>
																		</div>
																	</div>
																</li> 
															</c:forEach>
														</ol>
													</div>
													
													<!-- 添加评论 -->
													<div>
														<div>
															<div class="comment-respond">
																<span class="comment-reply-title">添加评论</span>
																<form action="#" method="post" class="comment-form"
																	novalidate>
																	<p class="comment-notes">
																		<span id="email-notes">您的电子邮件地址不会被公开。</span>必填字段已标记<span
																			class="required">*</span>
																	</p>
																	<div class="comment-form-rating">
																		<label id="rating">您的评分</label>
																		<p class="stars">
																			<span>
																				<a class="star-1" href="#">1</a> 
																				<a class="star-2" href="#">2</a> 
																				<a class="star-3" href="#">3</a>
																				<a class="star-4" href="#">4</a> 
																				<a class="star-5" href="#">5</a>
																			</span>
																		</p>
																	</div>
																	<p class="comment-form-author">
																		<label for="author">昵称 <span
																			class="required">*</span></label> <input id="author"
																			name="author" type="text" value="" size="30" required>
																	</p>
																	<p class="comment-form-email">
																		<label for="email">邮箱 <span
																			class="required">*</span></label> <input id="email" 
																			name="email" type="email" value="" size="30" required>
																	</p>
																	<p class="comment-form-comment">
																		<label>您的评论<span class="required">*</span></label> 
																		<textarea id="comment" name="comment" cols="45" rows="8" required>
																		</textarea> 
																	</p> 	 
																	<p class="form-submit">
																		<input name="submit" type="submit" id="submit"
																			class="submit" value="提交">
																	</p>
																</form>
															</div>
															<!-- #respond -->
														</div>
													</div>
												</div>
											</div>
											<!-- 自定义标签 -->
											<div class="tab-pane fade" id="product_tabs_custom">
												<div class="product-tabs-content-inner clearfix">
													<p>
														<strong>Lorem Ipsum</strong><span>&nbsp;is simply
															dummy text of the printing and typesetting industry.
															Lorem Ipsum has been the industry's standard dummy text
															ever since the 1500s, when an unknown printer took a
															galley of type and scrambled it to make a type specimen
															book. It has survived not only five centuries, but also
															the leap into electronic typesetting, remaining
															essentially unchanged. It was popularised in the 1960s
															with the release of Letraset sheets containing Lorem
															Ipsum passages, and more recently with desktop publishing
															software like Aldus PageMaker including versions of Lorem
															Ipsum.</span>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!-- 相关产品 -->
								<!-- Related Slider -->
								<div class="related-pro">
									<div class="slider-items-products">
										<div class="related-block">
											<div class="home-block-inner">
												<div class="block-title">
													<h2>相关产品</h2>
												</div>
											</div>
											<div id="related-products-slider"
												class="product-flexslider hidden-buttons">
												<div
													class="slider-items slider-width-col4 products-grid block-content">
													<div class="item">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Retis lapen casen"
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product2.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
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
																				<span class="regular-price"> <span
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product3.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Shreeji Ethnic</div>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product4.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
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
																				<span class="regular-price"> <span
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product5.jpg">
																	</a>
																	<div class="new-label new-top-left">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Xperia</div>
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
																					class="price">$88.00</span>
																				</span> <span class="old-price"><span class="price">$199.00</span></span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product6.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen"
																			href="product_detail.html">Covmed Mystone 60S
																			Tablets for covid-19</a>
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
																				<span class="regular-price"> <span
																					class="price">$325.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product7.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product8.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Just Wow</div>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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

								<!-- End related products Slider -->

								<!-- 加售产品 -->
								<!-- Upsell Product Slider -->
								<div class="upsell-pro">
									<div class="slider-items-products">
										<div class="upsell-block">
											<div class="home-block-inner">
												<div class="block-title">
													<h2>加售产品</h2>
												</div>
											</div>
											<div id="upsell-products-slider"
												class="product-flexslider hidden-buttons">
												<div
													class="slider-items slider-width-col4 products-grid block-content">
													<div class="item">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Retis lapen casen"
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product9.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product10.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Livia</div>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product11.jpg">
																	</a>
																	<div class="sale-label sale-top-left">- 49% Sale</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Just Wow</div>
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
																					class="price">$88.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product12.jpg">
																	</a>

																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
																	</div>
																	<div class="brand">Sunproto</div>
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
																					class="price">$275.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product1.jpg">
																	</a>
																	<div class="new-label new-top-left">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
																			Mystone 60S Tablets for covid-19</a>
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
																					class="price">$129.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product2.jpg">
																	</a>
																	<div class="new-label new-top-left">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">
																			Covmed Mystone 60S Tablets for covid-19 </a>
																	</div>
																	<div class="brand">Xperia</div>
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
																					class="price">$88.00</span>
																				</span> <span class="old-price"><span class="price">$199.00</span></span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
																		href="product_detail.jsp"> <img
																		alt="Retis lapen casen"
																		src="${pageContext.request.contextPath}/statics/products-images/product3.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview"
																				href="quick_view.jsp"></a></li>
																			<li><a class="link-wishlist" href="wishlist.jsp"></a>
																			</li>
																			<li><a class="link-compare" href="compare.jsp"></a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title">
																		<a title="Retis lapen casen" href="product_detail.jsp">Covmed
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
																				<span class="regular-price"> <span
																					class="price">$325.00</span>
																				</span>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button"
																				title="" data-original-title="Add to Cart">
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
								<!-- End Upsell  Slider -->
							</div>
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>





				</div>
			</div>
		</section>
		<!-- Main Container End -->
		<!-- Footer -->
		<%@ include file="common/footer.jsp"%>
		<!-- End Footer -->
	</div>
	<!-- mobile-menu -->
	<%@ include file="common/mobile_menu.jsp"%>

	<!-- JavaScript -->
	
<script src="${pageContext.request.contextPath}/statics/js/wangEditor.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/cloud-zoom.js"></script>
</body>
</html>
