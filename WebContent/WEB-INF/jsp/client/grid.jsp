<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<title>商品分类</title>

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
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">
</head>

<body class="grid-page">
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
								<span class="page-heading-title">商品分类</span>
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
<!-- -------------------------------------category-products开始--------------------------------------------- -->
<%@ include file="common/category_products2.jsp" %>
<!-- -------------------------------------category-products开始--------------------------------------------- -->

							
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>
					<!-- ------------------------aside------------------------------- -->
					<%@ include file="common/aside.jsp"%>
					<!-- ------------------------aside------------------------------- -->
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
