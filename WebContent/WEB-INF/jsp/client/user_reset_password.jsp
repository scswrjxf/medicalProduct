<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>重置密码</title>

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

<body class="shopping-cart-page">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->

		<!-- Main Container -->
		<section class="main-container col1-layout">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-xs-12">
						<article class="col-main">
							<div class="account-login">
								<div class="page-title">
									<h2>重置密码</h2>
								</div>
								<fieldset class="col2-set"> 
									<div class="col-1 new-users"> 
										<div class="content">
											<p>这里放一张图片</p>
											<img id="codeImg" style="height:300px;width: 500px" src="${pageContext.request.contextPath}/statics/images/banner1.jpg"/>
										</div>
									</div>
									<div class="col-2 registered-users">
										<strong>忘记密码</strong>
										<div class="content">
											<p>在我们的系统中已经了创建帐户，但是忘记了密码。</p> 
											<form action="${pageContext.request.contextPath}/user_reset_password" class="form" method="post">
											 	<fieldset>
											 		<p style="color: red">${error }</p>  
													<div class="form-list">
														<label for="userId">账户</label>
														<div class="loginInput">
															<input type="text" class="input-text required-entry" id="userId" name="userId" /> 
														</div>
														<div class="clear"></div>
													</div>
													<div class="form-list">
								                   	   <label for="yzm">验证码</label>
								                       <div class="formRight">
								                       	<div class="oneTwo"><input type="text" id="yzm" name="yzm" title="yzm"
																class="input-text required-entry" /></div>
								                       	<div class="oneTwo">
								                       		<img id="codeImg" style="height:30px;" src="${pageContext.request.contextPath}/code_img"/>
								                       		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:changeImg();" rel="external nofollow">看不清</a>
								                       	</div>
								                       </div>
								                       <div class="clear"></div>
								                   </div>  
													<div class="buttons-set">
														<br>
														<button id="send2" name="send" type="submit"  value="重置密码" class="button login">
															<span>重置密码</span> 
														</button>
														<a class="forgot-word"
															href="${pageContext.request.contextPath}/login">重置密码成功，去登录?</a>
														<div class="clear"></div> 
													</div>
												</fieldset>
											</form>
										</div>
									</div> 
								</fieldset>
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

	<!-- End Footer -->
<script>
   function changeImg(){
     var img = document.getElementById("codeImg");
     img.src="${pageContext.request.contextPath}/code_img?"+new Date().getTime();
   }
 </script>
	<!-- JavaScript --> 
	<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
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