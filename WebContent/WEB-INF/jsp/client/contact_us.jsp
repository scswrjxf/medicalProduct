<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 引入 Spring MVC 提供的表单标签库 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
             <form:form action="" method="POST" modelAttribute="touch">
              <fieldset class="group-select">
                <ul>
                  <li id="billing-new-address-form">
                    <fieldset>
                      <input type="hidden" name="billing[address_id]" value="" id="billing:address_id">
                      <ul>
                         
                        <li>
                          <div class="customer-name">
                            <div class="input-box name-firstname">
                            	<form:label path="name">姓名：<span class="required">*</span></form:label>
                              <br>
                              	<form:input path="name" cssClass="input-text"/><br>
                    			<form:errors path="name" cssStyle="color:red;"/>
                            </div>
                            <div class="input-box name-lastname">
                            	<form:label path="email">电子邮箱：<span class="required">*</span></form:label>
                              <br>
                              	<form:input path="email" cssClass="input-text"/><br>
                    			<form:errors path="email" cssStyle="color:red;"/>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="input-box">
                          		<form:label path="phone">电话：</form:label>
                            <br>
                            	<form:input path="phone" cssClass="input-text validate-email"/>
                    			<form:errors path="phone" cssStyle="color:red;"/>
                          </div>
                        </li>
                        <li>
                        		<form:label path="address">地址：</form:label>
                          <br>
                          		<form:input path="address" cssClass="input-text"/>
                    			<form:errors path="address" cssStyle="color:red;"/>
                        </li>
                        <li class="">
                        		<form:label path="message">信息：<span class="required">*</span></form:label>
                          <br>
                          <div style="float:none" class="">
                          	<form:textarea path="message" cols="5" rows="3"/><br>
                          	<form:errors path="message" cssStyle="color:red;"/>
                          </div>
                        </li>
                        
                      </ul>
                    </fieldset>
                  </li>
                  <p class="require"><em class="required">* </em>必填项</p>
                  <input type="text" name="hideit" id="hideit" value="" style="display:none !important;">
                  <div class="buttons-set">
                     <button type="submit" title="Submit" class="button submit"> <span> 提交 </span> </button>
                  </div>
                </ul>
              </fieldset>
             </form:form>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
            <div class="side-banner"><img src="${pageContext.request.contextPath}/statics/images/side-banner.jpg" alt="banner"></div>
            <div class="block block-company"> 
              <div class="block-content">
                <ol id="recently-viewed-items">
                  <li class="item odd"><a href="${pageContext.request.contextPath}/about_us">关于我们</a></li> 
                  <li class="item last"><strong>联系我们</strong></li>
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