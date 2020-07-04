<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>经常问的问题</title> 
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

<body class="faq-page">
<div id="page"> 
<!-- Header -->
<%@ include file="common/header.jsp" %> 
<!-- end header -->
  <!-- Main Container -->
<section class="main-container col1-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-xs-12">
          <article class="col-main">
            <div class="col-main">
              <div class="cart">
                <div class="page-title">
                  <h2>Frequently Asked Questions</h2>
                </div>
                <div class="panel-group accordion-faq" id="faq-accordion">
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question1"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </a> </div>
                    <div id="question1" class="panel-collapse collapse in">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question3" class="collapsed"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor.</a> </div>
                    <div id="question3" class="panel-collapse collapse">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question2" class="collapsed"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Sed semper tortor. Cras condimentum, odio sed molestie molestie, enim urna vehicula magna, eu venenatis velit nunc eget justo.</a> </div>
                    <div id="question2" class="panel-collapse collapse">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question5" class="collapsed"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Curabitur convallis facilisis lorem. Vivamus euismod nulla vel nunc. Fusce tincidunt, justo congue egestas molestie, tortor tortor.</a> </div>
                    <div id="question5" class="panel-collapse collapse">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question4" class="collapsed"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Cras pellentesque. Fusce ullamcorper, pede eget pellentesque venenatis, felis magna nonummy eros, quis ultrices odio lorem quis urna. Mauris sem sapien, mollis vel.</a> </div>
                    <div id="question4" class="panel-collapse collapse">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
                  <div class="panel">
                    <div class="panel-heading"> <a data-toggle="collapse" data-parent="#faq-accordion" href="#question6" class="collapsed"> <span class="arrow-down">+</span> <span class="arrow-up">&#8211;</span> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. </a> </div>
                    <div id="question6" class="panel-collapse collapse">
                      <div class="panel-body"> Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum, pulvinar et, egestas vitae, magna. Integer semper, velit ut interdum malesuada, diam dolor pellentesque lacus, vitae commodo orci nisi et sem. Pellentesque adipiscing nisi. Nulla facilisi. Mauris lacinia lectus sit amet felis. Aliquam erat volutpat. Nulla porttitor tortor at nisl. Nam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Mauris et ligula quis erat dignissim imperdiet. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. </div>
                    </div>
                  </div>
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
