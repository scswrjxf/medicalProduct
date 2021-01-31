<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>我的订单</title>

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

<body class="dashboard-page">
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
							<div class="my-account">
								<div class="page-title">
									<h2>我的订单</h2>
								</div>
								<div class="dashboard">
									<div class="welcome-msg">
										<strong>你好,${loginer.userAlice}!</strong>
										<p></p>
									</div>
									<div class="recent-orders">
										<div class="title-buttons">
											<strong>全部订单</strong> <a href="#"></a>
										</div>
										<div class="table-responsive">
											<table class="data-table" id="my-orders-table">
												<col>
												<col>
												<col>
												<col width="1">
												<col width="1">
												<col width="1">
												<thead>
													<tr class="first last">
														<th width="30%">订单号</th>
														<th width="25%">订单内容</th>
														<th width="15%">时间</th>
														<th width="10%"><span class="nobr">总价格</span></th>
														<th width="10%">状态</th>
														<th width="10%">确认收货</th>
													</tr>
												</thead>
												<tbody>

													<c:forEach items="${orderlist }" var="orderlist">
														<tr class="first odd">
															<td>${orderlist.code }</td>
															<td>${orderlist.orderName }</td>
															<td><fmt:formatDate value="${orderlist.orderDate}"
																	pattern="yyyy-MM-dd" /></td>
															<td><span class="price">${orderlist.total }</span></td>
															<td><em> 
															<c:if test="${orderlist.orderStatus==0 }">待发货</c:if> 
															<c:if test="${orderlist.orderStatus==1 }">已发货</c:if> 
															<c:if test="${orderlist.orderStatus==2 }">已签收</c:if>
															</em></td>
															<td class="a-center last"><span class="nobr">
															<c:if test="${orderlist.orderStatus==0}">商品未发货</c:if>
															<c:if test="${orderlist.orderStatus==1 }">
																<a href="${pageContext.request.contextPath }/orderPass?oid=${orderlist.oid}">确认收货</a>
															</c:if>
															<c:if test="${orderlist.orderStatus==2 }">您已确认收货</c:if>
															</span></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>
					<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<div class="block block-company">
							<div class="block-content">
								<ol id="recently-viewed-items">
									<li class="item odd"><a href="${pageContext.request.contextPath}/cserver/viewuser">用户设置</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/cartlist">购物车</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/my_comment">我的评论</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/goodsadd">添加商品</a></li>
									<li class="item odd"><strong>我的订单</strong></li>
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
</body>
</html>