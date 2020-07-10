<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
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
<title>全部商品</title>

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

<body class="list-page">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->

		<!-- Main Container -->
		<section class="main-container col2-left-layout">
			<div class="container">
				<div class="row">
					<div class="col-sm-9 col-sm-push-3">
						<!-- Breadcrumbs -->
						<div class="breadcrumbs">
							<ul>

							</ul>
						</div>
						<!-- Breadcrumbs End -->
						<div>
							<h2 class="page-heading">
								<span class="page-heading-title">全部商品</span>
							</h2>
						</div>
						<div class="category-description std">
							<div class="slider-items-products">
								<div id="category-desc-slider"
									class="product-flexslider hidden-buttons">
									<div
										class="slider-items slider-width-col1 owl-carousel owl-theme">

										<!-- Item -->
										<div class="item">
											<a href="#"><img alt=""
												src="${pageContext.request.contextPath}/statics/images/category-img1.jpg"></a>
											<div class="cat-img-title cat-bg cat-box">
												<div class="small-tag">2020</div>
												<h2 class="cat-heading">温度计</h2>
												<p>40% 折扣 &sdot; 免费发货</p>
											</div>
										</div>
										<!-- End Item -->

										<!-- Item -->
										<div class="item">
											<a href="#"><img alt=""
												src="${pageContext.request.contextPath}/statics/images/category-img2.jpg"></a>
											<div class="cat-img-title cat-bg cat-box">
												<div class="small-tag">Xperia 品牌</div>
												<h2 class="cat-heading">一次性口罩</h2>
												<p>节省 40%</p>
											</div>
										</div>
										<!-- End Item --> 
									</div>
								</div>
							</div>
						</div>
						<article class="col-main">
							<div class="toolbar">
								<div class="display-product-option">
									<div class="sorter">
										<div class="view-mode">
											<a class="button-grid" title="Grid" href="grid.jsp">&nbsp;</a><span
												class="button-active button-list" title="List">&nbsp;</span>
										</div>
									</div>
									<div class="pages">
										<label>页:</label>
										<ul class="pagination">
											<li><a href="#">&laquo;</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">&raquo;</a></li>
										</ul>
									</div>
									<div class="product-option-right">
										<div class="sort-by">
											<label class="left">视图: </label>
											<ul>
												<li><a href="#">位置<span class="right-arrow"></span></a>
													<ul>
														<li><a href="#">名字</a></li>
														<li><a href="#">价格</a></li>
														<li><a href="#">位置</a></li>
													</ul>
												</li>
											</ul>
											<a class="button-asc left" href="#"
												title="Set Descending Direction"><span class="top_arrow"></span></a>
										</div>
										<div class="pager">
											<div class="limiter">
												<label>视图: </label>
												<ul>
													<li><a href="#">15<span class="right-arrow"></span></a>
														<ul>
															<li><a href="#">20</a></li>
															<li><a href="#">30</a></li>
															<li><a href="#">35</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="category-products">
								<ol class="products-list" id="products-list">
									<c:forEach items="${goods}" var="g">
										<li class="item first">
											<div class="product-image">
												<a
													href="${pageContext.request.contextPath}/product_detail/${g.gid}"
													title="HTC Rhyme Sense"> <img class="small-image"
													src="${pageContext.request.contextPath}/statics/file/${g.goodsPhoto}"
													alt="HTC Rhyme Sense">
												</a>
											</div>
											<div class="product-shop">
												<h2 class="product-name">
													<a
														href="${pageContext.request.contextPath}/product_detail/${g.gid}"
														title="HTC Rhyme Sense">${g.goodsName}</a>
												</h2>
												<div class="ratings">
													<div class="rating-box">
														<div style="width: 50%" class="rating"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#review-form">Add Your Review</a>
													</p>
												</div>
												<div class="desc std">
													<p>${g.goodsDesc}</p>
													<p>
														<a class="link-learn" title="" href="product_detail.jsp">Learn
															More</a>
													</p>
												</div>
												<div class="price-box"> 
													<p class="special-price">
														<span class="price-label"></span> <span class="price">￥${g.goodsPrice}
														</span>
													</p>
												</div>
												<div class="actions">
													<c:choose>
														<c:when test="${!empty loginer }">
															<a
																href="${pageContext.request.contextPath}/addcartlist/${g.gid}">
																<button class="button btn-cart ajx-cart" title="添加到购物车"
																	type="button">
																	<span>添加到购物车</span>
																</button>
															</a>
														</c:when>
														<c:otherwise>
															<div class="dlcart">
																<button class="button btn-cart ajx-cart" title="添加到购物车"
																	type="button">
																	<span>添加到购物车</span>
																</button>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</li>
									</c:forEach>
								</ol>
							</div>
							
							<div class="toolbar">
								<div class="display-product-option">
									<div class="pages">
										<label>页面:</label>
										<ul class="pagination">
											<li><a href="#">&laquo;</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">&raquo;</a></li>
										</ul>
									</div>
									<div class="product-option-right">
										<div class="sort-by">
											<label class="left">视图: </label>
											<ul>
												<li><a href="#">位置<span class="right-arrow"></span></a>
													<ul>
														<li><a href="#">名字</a></li>
														<li><a href="#">价格</a></li>
														<li><a href="#">位置</a></li>
													</ul>
												</li>
											</ul>
											<a class="button-asc left" href="#"
												title="Set Descending Direction"><span class="top_arrow"></span></a>
										</div>
										<div class="pager">
											<div class="limiter">
												<label>视图: </label>
												<ul>
													<li><a href="#">15<span class="right-arrow"></span></a>
														<ul>
															<li><a href="#">20</a></li>
															<li><a href="#">30</a></li>
															<li><a href="#">35</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div> 
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>
					<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<div class="side-banner">
							<img
								src="${pageContext.request.contextPath}/statics/images/side-banner.jpg"
								alt="banner">
						</div>
						<div class="block block-layered-nav">
							<div class="block-title">选购</div>
							<div class="block-content">
								<p class="block-subtitle">所有商品分类</p>
								<dl id="narrow-by-list">
								<dd class="odd">
									<ol>
										<li><a href="${pageContext.request.contextPath}/list">全部商品
										</a></li>
										<c:forEach items="${category }" var="ctg">
											<li><a
												href="${pageContext.request.contextPath}/grid?categoryId=${ctg.categoryId}">${ctg.category}</a>
											</li>
										</c:forEach>
									</ol>
								</dd>
								<dt class="even">制造商</dt>
								<dd class="even">
									<ol>
										<li><a href="#">品牌</a></li>
										<li><a href="#">公司</a></li>
										<li><a href="#">徽标时尚</a></li>
									</ol>
								</dd>
								<dt class="odd">颜色</dt>
								<dd class="odd">
									<ol>
										<li><a href="#">绿色</a></li>
										<li><a href="#">白色</a></li>
										<li><a href="#">黑色</a></li>
										<li><a href="#">灰色</a></li>
										<li><a href="#">深灰色</a></li>
										<li><a href="#">蓝色</a></li>
									</ol>
								</dd>
								<dt class="last even">尺寸</dt>
								<dd class="last even">
									<ol>
										<li><a href="#">S码</a></li>
										<li><a href="#">M码</a></li>
										<li><a href="#">L码</a></li>
										<li><a href="#">XL码</a></li>
									</ol>
								</dd>
							</dl>
						</div>
						</div>
						<div class="block block-compare">
							<div class="block-title ">比较产品</div>
							<div class="block-content">
							<ol id="compare-items">
								<li class="item odd"><input type="hidden" value="2173"
									class="compare-item-id"> <a class="btn-remove1"
									title="Remove This Item" href="#"></a> <a href="#"
									class="product-name">棉质蜂窝浴巾</a></li>
								<li class="item last even"><input type="hidden"
									value="2174" class="compare-item-id"> <a
									class="btn-remove1" title="Remove This Item" href="#"></a> <a
									href="#" class="product-name"> 金黑色棕色全框飞行员造型</a></li>
							</ol>
							<div class="ajax-checkout">
								<button type="submit" title="Submit"
									class="button button-compare">
									<span>比较</span>
								</button>
								<button type="submit" title="Submit" class="button button-clear">
									<span>明确</span>
								</button>
							</div>
						</div>
						</div>
						<div class="featured-add-box">
							<div class="featured-add-inner">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/statics/images/hot-trends-banner.jpg"
									alt="f-img"></a>
								<div class="banner-content">
									<div class="banner-text">清仓大甩卖</div>
									<div class="banner-text1">
										热 <span>销</span>
									</div>
									<p>享受20%的折扣</p>
								</div>
							</div>
						</div>
					</aside>
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
	<script
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>

	<script
		src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".dlcart").click(function() {
				alert("请先登录")
			})
		})
	</script>
</body>
</html>
