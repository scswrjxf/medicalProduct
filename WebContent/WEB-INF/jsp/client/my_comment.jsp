<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>我的评论</title>

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />

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
	href="${pageContext.request.contextPath}/statics/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">

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

<body class="about-us-page">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->

		<!-- Main Container -->
		<section class="main-container col2-left-layout">
			<div class="container">
				<div class="row">
					<div class="col-sm-9 col-sm-push-3">
						<article class="col-main">
							<div class="page-title">
								<h2>我的评论</h2>
							</div>  
							<p style="color: red;">${error }</p>
							<div class="static-contain">
								<table class="providerTable" cellpadding="0" cellspacing="0">
									<tr class="firstTr">
										<th width="15%">评论商品图片&nbsp;</th>
										<th width="15%">评论商品名称&nbsp;</th>
										<th width="35%">评论内容&nbsp;</th>
										<th width="15%">评论时间&nbsp;</th>
										<th width="10%">状态&nbsp;</th>
										<th width="10%">操作</th>
									</tr>
									<c:forEach var="comment" items="${commentlist }">
										<tr>
											<td style="height: 110px; width: 100px;">
											<a href="${pageContext.request.contextPath}/product_detail/${comment.goodsName.gid}">
											<img alt="" style="height: 100px; width: 100px;"
												src="${pageContext.request.contextPath}/statics/file/${comment.goodsName.goodsPhoto}"
												class="avatar avatar-60 photo"></a></td>
											<td><span>${comment.goodsName.goodsName}</span></td>
											<td><span>${comment.commentMessage}</span></td>
											<td>
												<span><fmt:formatDate value="${comment.commentDate }" pattern="yyyy-MM-dd "/></span> 
											</td> 
											<td>
												<span>
													<c:if test="${comment.commentIspass==0}">未审核</c:if>
													<c:if test="${comment.commentIspass==1}">已审核</c:if> 
												</span>
											</td>  
											<td><a href="${pageContext.request.contextPath}/clientXF/del_comment/${comment.commentId}">删除评论</a></td>
										</tr> 
									</c:forEach>
								</table>
							</div> 
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>

					<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<div class="block block-company"> 
							<div class="block-content">
								<ol id="recently-viewed-items">
									<li class="item odd"><a href="${pageContext.request.contextPath}/cserver/viewuser">用户设置</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/cartlist">购物车</a> </li> 
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li> 
									<li class="item odd"><strong>我的评论</strong></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/goodsadd">添加商品</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/orderlist">我的订单</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/alter_password">修改密码</a></li>
								</ol>
							</div>
						</div>
					</aside>


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

	<!-- End Footer -->

	<!-- JavaScript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/revslider.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/common.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
</body>
</html>