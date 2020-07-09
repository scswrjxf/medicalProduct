<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>用户设置</title>

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
								<h2>用户设置</h2>
							</div>
							<div class="providerAdd" style="border-color: #19b3bd;bacbackground-color:#19b3bd;">
								<div class="wrapper">
							   	<!-- Note -->
							       <div class="nNote nInformation hideit">
							           <p>${error }</p>
							       </div>
							   		<div class="widget" style="height: 100px;">
							           <div style="position: absolute;left: 190px;top: 100px;">用户头像:</div>
							 				<img id="uPhoto" style="position: absolute;left: 270px;width:100px;height:100px; top: 115px;" src="${pageContext.request.contextPath}/statics/file/${loginer.userPhoto}" alt="" />
							  			<label class="providerAddBtn">
							    			<input type="file" id="photo" name="photo" onchange="upload();" style="left:-999px;position:absolute;">
							    			<span style="position: absolute;left: 422px;top:190px; background-color:#4ca0cc;color: white;height: 25px;width: 80px;border-radius: 5%;line-height: 25px;text-align: center;">
							    				上传新头像
							    			</span>
										</label>
							      	</div>
								</div>
							</div>
							<div class="providerAdd" style="border-color: #19b3bd;bacbackground-color:#19b3bd;">
								<form id="userForm" name="userForm" method="post" 
									action="${pageContext.request.contextPath}/cserver/alter_user">
									<input type="hidden" name="userId" value="${loginer.userId}">
									<!--div的class 为error是验证错误，ok是验证成功-->
							 
									<div class="info">${information}</div>
									<div class="">
										<label for="userId">ID：</label>
										<input type="text" name="userId" id="userId" 
										value="${loginer.userId}" readonly="readonly"><font color="#e72c59">&nbsp;&nbsp;*ID不能修改</font>
									</div>
									<div>
										<label for="userAlice">昵称：</label> 
										<input type="text" name="userAlice" id="userAlice" 
										value="${loginer.userAlice}"><font color="red"></font>
									</div>
									<div>
										<label for="userEmail">邮箱：</label> 
										<input type="email" name="userEmail" id="userEmail"
										value="${loginer.userEmail}"><font color="red"></font>
									</div>
									<div>
										<label for="userSex">性别：</label> 
										<c:choose>
											<c:when test="${loginer.userSex==男}"> 
												<input type="radio" name="userSex" id="userSex"value="男" checked="checked">男
												<input type="radio" name="userSex" id="userSex"value="女">女
											</c:when>
											<c:otherwise>
												<input type="radio" name="userSex" id="userSex"value="男">男
												<input type="radio" name="userSex" id="userSex"value="女" checked="checked">女
											</c:otherwise>
										</c:choose>
										<font color="red"></font>
										<div>
											<label for="userCreateDate">注册日期：</label> 
											<fmt:formatDate value="${loginer.userCreateDate}" pattern="yyyy-MM-dd"/>
										</div>
									</div>
										<div class="providerAddBtn">
											<input type="submit" style="height: 40px; "
											name="save" id="save" value="保存" class="input-button"> 
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
									<li class="item odd"><strong>用户设置</strong></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/cartlist">购物车</a></li>
									<li class="item odd"><a
										href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
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
 <script type="text/javascript">
	//当前id为save被点击的时候，触发 form 标签的提交事件
	$("#save").click(function(){
		// 使得表单提交
		$("form").trigger("submit");
	});
	</script>
 
<script type="text/javascript">
function upload(){
	var formData = new FormData();
	formData.append("photo",$("#photo")[0].files[0]);
	formData.append("userId",$("#userId").val());
	$.ajax({
		url:'${pageContext.request.contextPath}/cserver/upload',
		type:'post',
		data: formData,
		contentType: false,
		processData: false,
		success:function(result){
			if(result['status'] == 'success'){
				$("#uPhoto").attr("src","${pageContext.request.contextPath}/statics/file/"+result['filename']);
			}
			else{
				alert(result['status']);
			}
		},
		error: function(XMLHttpRequest,textStatus,errorThrown) {
		    alert(errorThrown);
		}
	});
}
</script>
</body>
</html>