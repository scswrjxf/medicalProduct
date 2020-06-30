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
<title>登录</title>

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
									<h2>登录或者创建一个帐户</h2>
								</div>
								<fieldset class="col2-set">
									<div class="col-1 new-users">
										<strong>新用户</strong>
										<div class="content">
											<p>通过在我们的系统中创建帐户，您将能够更快地完成结帐流程，存储多个送货地址，查看和跟踪帐户中的订单等等。</p>
											<div class="buttons-set">
												<button
													onclick="window.location='${pageContext.request.contextPath}/regist';"
													class="button create-account" type="button">
													<span>创建一个新账户</span>
												</button>
											</div>
										</div>
									</div>
									<div class="col-2 registered-users">
										<strong>登录账户</strong>
										<div class="content">
											<p>如果您拥有我们的帐户，请登录。</p>
											<form:form action="${pageContext.request.contextPath}/login" cssClass="form" modelAttribute="user">
												<fieldset>
													<div class="form-list">
														<form:label path="userId">账户<span
																class="required">*</span>
														</form:label>
														<div class="loginInput">
															<form:input path="userId" type="text" title="userId"
																class="input-text required-entry" id="userId" value=""
																name="login[userId]" />
															<br>
															<form:errors path="userId" cssStyle="color:red;" />
														</div>
														<div class="clear"></div>
													</div>
													<div class="form-list">
														<form:label path="userPsw">密码<span
																class="required">*</span>
														</form:label>
														<div class="loginInput">
															<form:password path="userPsw" title="userPsw" id="pass"
																class="input-text required-entry validate-password"
																value="userPsw" name="login[userPsw]" />
															<br>
															<form:errors path="userPsw" cssStyle="color:red;" />
														</div>
														<div class="clear"></div>
													</div>
													<p class="required">* 必填项</p>
													<div class="buttons-set">
														<form:button path="send2" id="send2" name="send" type="submit" class="button login">
															<span>登录</span>
														</form:button>
														<a class="forgot-word"
															href="${pageContext.request.contextPath}/user_reset_password">忘记密码?</a>
														<div class="clear"></div>
													</div>
												</fieldset>
											</form:form>
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