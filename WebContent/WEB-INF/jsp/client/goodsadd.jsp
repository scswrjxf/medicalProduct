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
<title>我的收藏</title>

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
								<h2>添加商品</h2>
							</div> 
							<p style="color: red;">${error }</p> 
							<div class="static-contain">
								<div class="providerAdd" style="border-color: #19b3bd;margin:20px; bacbackground-color: #19b3bd;">
									<form id="goodsForm" name="goodsForm" method="post"
										action="${pageContext.request.contextPath}/clientXF/goodsnewadd"
										enctype="multipart/form-data">
										<!--div的class 为error是验证错误，ok是验证成功-->
										<div class="error" style="color: red;">${error }</div>
										<div>
											<label for="goodsName">商品名称：</label> <input type="text"
												name="goodsName" id="goodsName" value="" required="required">
											<!-- 放置提示信息 -->
											<font color="red"></font>
										</div>
										<div>
											<label for="goodsPrice">商品价格：</label> <input type="text"
												name="goodsPrice" id="goodsPrice" value=""
												required="required"> <font color="red"></font>
										</div>
										<div>

											<label for="goodsDesc">商品描述：</label>
											<textarea name="goodsDesc" id="goodsDesc" rows="2" cols="50"
												required="required"></textarea>
											<font color="red"></font>

										</div>
										<div>
											<label for="goodsNumber">商品数量：</label> <input type="text"
												type="text" name="goodsNumber" id="goodsNumber" value=""
												required="required"> <font color="red"></font>
										</div>
										<div>
											<label>商品分类：</label>
											<!-- 列出所有的商品分类 -->
											<select name="categoryId.categoryId" id="categoryId">
												<c:forEach items="${category }" var="categoryList">
													<c:choose>
														<c:when test='${categoryList.category == "外用"}'>
															<option value="${categoryList.categoryId}"
																selected="selected">外用</option>
														</c:when>
														<c:otherwise>
															<option value="${categoryList.categoryId}">${categoryList.category}</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</select> <font color="red"></font>
										</div>
										<div>
											<label for="goodsPhoto">商品图片：</label> <input type="file"
												name="a_goodsPhoto" id="goodsPhoto" /> <font color="red"></font>
										</div>
										<div class="providerAddBtn">
										<input type="submit" style="width:100px;margin:20px; height: 40px;background-color: #19b3bd;" name="save" 
											id="save" value="保存" class="input-button">
										<!--	<input type="button" name="save" id="save" value="保存">
										 <input type="button" id="back" name="back" value="返回"> -->	
										</div>
									</form>
								</div>
							</div>
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>

					<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<div class="block block-company">
							<div class="block-content">
								<ol id="recently-viewed-items">
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/cserver/viewuser">用户设置</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/cartlist">购物车</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/clientXF/my_comment">我的评论</a></li>
									<li class="item odd"><strong>添加商品</strong></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/orderlist">我的订单</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/clientXF/alter_password">修改密码</a></li>
								</ol>
							</div>
						</div>
					</aside>


				</div>
			</div>
		</section>

	</div>
	<%@include file="common/footer.jsp"%>


	<script
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script>
		$(function() {
			// 验证商品名称唯一性
			// 为 id 为 goodsName 的输入框添加 blur 事件，发送 ajax 请求到控制器
			//		$("#goodsName").blur(function() {
			//			// 获取 goodsName 的值
			//			var goodsNameVal = $(this).val();
			//			// 发送异步请求，把获取的值传递到控制器
			//			$.ajax({
			//				type : "POST",
			//				url : "${pageContext.request.contextPath}/clientXF/ucexist",
			//				data : "goodsName=" + goodsNameVal,
			//				success : function(msg) {

			//					if (msg.goodsName == 'exist') {
			//						$("#goodsName").next().html("商品已经存在");
			//					} else {
			//						$("#goodsName").next().html("商品名可以使用");
			//					}
			//				},
			//				error : function(XMLHttpRequest, textStatus, errorThrown) {
			//					alert("异常：" + textStatus + errorThrown);
			//				}
			//			});
			//		});
			// 单击 save 按钮，提交表单
			$("#save").click(function() {
				// 使得表单提交
				$("form").trigger("submit");
			});

			// 单击 back 按钮，返回到 userlist
		//	$("#back").click(
		//					function() {
		//						// 使用了 JavaScirpt 页面跳转方式
		//						location.href = "${pageContext.request.contextPath}/server/goodslist";
		//					});
		});
	</script>
</body>
</html>