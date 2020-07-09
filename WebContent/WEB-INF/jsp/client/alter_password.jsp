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
<title>修改密码</title>

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/public.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style1.css" />
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
								<h2>修改密码</h2>
							</div>
							<div class="providerAdd" style="border-color: #19b3bd;bacbackground-color:#19b3bd;">
								<form id="userForm" name="userForm" method="post" 
									action="${pageContext.request.contextPath}/clientXF/alter_password">
									<input type="hidden" name="method" value="savepwd">
									<!--div的class 为error是验证错误，ok是验证成功-->
							 
									<div class="info">${information}</div>
									<div class="">
										<label for="oldPassword">旧密码：</label>
										<input type="password" name="oldpassword" id="oldpassword" 
										value=""><font color="red"></font>
									</div>
									<div>
										<label for="newPassword">新密码：</label> 
										<input type="password" name="newPassword" id="newpassword" 
										value=""><font color="red"></font>
									</div>
									<div>
										<label for="reNewPassword">确认新密码：</label> 
										<input type="password" name="reNewPassword" id="rnewpassword"
										value=""><font color="red"></font>
									</div>
									<div class="providerAddBtn">
										<input type="submit" style="height: 40px; "
										name="save" id="save" value="保存" class="input-button"> 
										<input type="button" style="height: 40px; " 
										id="back" name="back" value="返回首页">
									</div>
								</form>
							</div>
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>

					<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<div class="block block-company">
							<div class="block-content">
								<ol id="recently-viewed-items">
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/#">用户设置</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/cartlist">购物车</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/orderlist">我的订单</a></li>
									<li class="item odd"><strong>修改密码</strong></li>
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
<script>
$(function(){
	// 验证旧密码是否正确
	// 为 id 为 oldpassword 的输入框添加 blur 事件，发送 ajax 请求到控制器
	$("#oldpassword").blur(function(){
		// 获取 oldPassword 的值
		var oldPassword = $(this).val();
		// 发送异步请求，把获取的值传递到控制器
		$.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/clientXF/pwdconform",
			   data: "oldPassword="+oldPassword,
			   success:function(data){
				   if(data.infor != "success"){
					   $("#oldpassword").next().html(data.infor).end().focus();
				   }
				   else{
					   $("#oldpassword").next().html("");
				   }
			   },
			   error:function (XMLHttpRequest, textStatus, errorThrown) {
				    alert("异常："+textStatus+errorThrown);
			   }
		});
	});
	
	// 当前id为save被点击的时候，触发 form 标签的提交事件
	$("#save").click(function(){
		// 使得表单提交
		$("form").trigger("submit");
	});
	
	// 单击 back 按钮，返回到 userlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/index";
	});
	
});
</script> 	 
</body>
</html>