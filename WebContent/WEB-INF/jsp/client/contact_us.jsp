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
<title>联系我们</title>

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

<body class="contact-page">
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
              <h2>联系我们</h2>
            </div>
            <div class="static-contain">
              <fieldset class="group-select">
                <ul>
                  <li id="billing-new-address-form">
                    <fieldset>
                      <input type="hidden" name="billing[address_id]" value="" id="billing:address_id">
                      <ul>
                        <li>
                          <div class="customer-name">
                            <div class="input-box name-firstname">
                              <label for="billing:firstname"> First Name<span class="required">*</span></label>
                              <br>
                              <input type="text" id="billing:firstname" name="billing[firstname]" value="" title="First Name" class="input-text ">
                            </div>
                            <div class="input-box name-lastname">
                              <label for="billing:lastname"> Email Address <span class="required">*</span> </label>
                              <br>
                              <input type="text" id="billing:lastname" name="billing[lastname]" value="" title="Last Name" class="input-text">
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="input-box">
                            <label for="billing:company">Company</label>
                            <br>
                            <input type="text" id="billing:company" name="billing[company]" value="" title="Company" class="input-text">
                          </div>
                          <div class="input-box">
                            <label for="billing:email">Telephone <span class="required">*</span></label>
                            <br>
                            <input type="text" name="billing[email]" id="billing:email" value="" title="Email Address" class="input-text validate-email">
                          </div>
                        </li>
                        <li>
                          <label for="billing:street1">Address <span class="required">*</span></label>
                          <br>
                          <input type="text" title="Street Address" name="billing[street][]" id="billing:street1  street1" value="" class="input-text required-entry">
                        </li>
                        <li>
                          <input type="text" title="Street Address 2" name="billing[street][]" id="billing:street2 street2" value="" class="input-text required-entry">
                        </li>
                        <li class="">
                          <label for="comment">Comment<em class="required">*</em></label>
                          <br>
                          <div style="float:none" class="">
                            <textarea name="comment" id="comment" title="Comment" class="required-entry input-text" cols="5" rows="3"></textarea>
                          </div>
                        </li>
                      </ul>
                    </fieldset>
                  </li>
                  <p class="require"><em class="required">* </em>Required Fields</p>
                  <input type="text" name="hideit" id="hideit" value="" style="display:none !important;">
                  <div class="buttons-set">
                    <button type="submit" title="Submit" class="button submit"> <span> Submit </span> </button>
                  </div>
                </ul>
              </fieldset>
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
</body>
</html>