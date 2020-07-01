<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

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
<title>404</title>

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

<body class="error-page">
<div id="page">  
  <!-- Header -->
  <%@ include file="client/common/header.jsp" %> 
  <!-- end header -->
  
  <!-- Main Container -->
<section class="main-container col1-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-xs-12">
          <article class="col-main">
            <div class="content-wrapper">
              <div class="std">
                <div class="page-not-found">
 <div><img src="${pageContext.request.contextPath}/statics/images/error.png" alt=""></div>
                  <h3>Oops! The Page you requested was not found!</h3>
                  
                </div>
              </div>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        
        
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
   <!-- Footer -->
 	<%@ include file="client/common/footer.jsp" %> 
    <!-- End Footer --> 
</div>
<!-- mobile-menu -->
<%@ include file="client/common/mobile_menu.jsp" %> 
<!-- End Footer --> 

<!-- JavaScript --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/revslider.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/common.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/cloud-zoom.js"></script>
</body>
</html>
