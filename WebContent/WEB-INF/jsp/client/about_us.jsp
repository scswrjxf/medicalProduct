<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>  
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.InitDao"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title></title>

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/simple-line-icons.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/revslider.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body class="about-us-page">
<div id="page"> 
  <!-- Header -->
  <%@ include file="common/header.jsp" %> 
  <!-- end header -->
  
  <!-- Main Container -->
  <section class="main-container col2-left-layout">
    <div class="container">
      <div class="row">
      <div class="col-sm-9 col-sm-push-3">
          <article class="col-main">
            <div class="page-title">
              <h2><c:out value="${au.aboutTitle}"></c:out></h2>
            </div>
            <div class="static-contain">
           
              <p><c:out value="${au.aboutDesc}"></c:out></p>
              
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        
          <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
            <div class="side-banner"><img src="${pageContext.request.contextPath}/statics/images/side-banner.jpg" alt="banner"></div>
            <div class="block block-company"> 
              <div class="block-content">
                <ol id="recently-viewed-items">
                  <li class="item odd"><strong>关于我们</strong></li> 
                  <li class="item last"><a href="${pageContext.request.contextPath}/contact_us">联系我们</a></li>
                </ol>
              </div>
            </div>
          </aside>
     
        
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
  
   <!-- Footer -->
   <%@ include file="common/footer.jsp" %>
   <!-- End Footer --> 
</div>
<!-- mobile-menu -->
<%@ include file="common/mobile_menu.jsp" %>

<!-- End Footer --> 

<!-- JavaScript --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/revslider.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/common.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
</body>
</html>