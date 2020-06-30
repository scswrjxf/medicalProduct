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
<title>Covmed premium HTML5 &amp; CSS3 template</title>

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

<body class="dashboard-page">
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
            <div class="my-account">
              <div class="page-title">
                <h2>My Dashboard</h2>
              </div>
              <div class="dashboard">
                <div class="welcome-msg"> <strong>Hello,John Doe!</strong>
                  <p>From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
                </div>
                <div class="recent-orders">
                  <div class="title-buttons"><strong>Recent Orders</strong> <a href="#">View All </a> </div>
                  <div class="table-responsive">
                    <table class="data-table" id="my-orders-table">
                      <col>
                      <col>
                      <col>
                      <col width="1">
                      <col width="1">
                      <col width="1">
                      <thead>
                        <tr class="first last">
                          <th>Order #</th>
                          <th>Date</th>
                          <th>Ship to</th>
                          <th><span class="nobr">Order Total</span></th>
                          <th>Status</th>
                          <th>&nbsp;</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="first odd">
                          <td>500000002</td>
                          <td>9/9/10 </td>
                          <td>John Doe</td>
                          <td><span class="price">$5.00</span></td>
                          <td><em>Pending</em></td>
                          <td class="a-center last"><span class="nobr"> <a href="#">View Order</a> <span class="separator">|</span> <a href="#">Reorder</a> </span></td>
                        </tr>
                        <tr class="last even">
                          <td>500000001</td>
                          <td>9/9/10 </td>
                          <td>John Doe</td>
                          <td><span class="price">$1,397.99</span></td>
                          <td><em>Pending</em></td>
                          <td class="a-center last"><span class="nobr"> <a href="#">View Order</a> <span class="separator">|</span> <a href="#">Reorder</a> </span></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="box-account">
                  <div class="page-title">
                    <h2>Account Information</h2>
                  </div>
                  <div class="col2-set">
                    <div class="col-1">
                      <h5>Contact Information</h5>
                      <a href="#">Edit</a>
                      <p>Saraha Smith<br>
                        saraha.smith@gmail.com<br>
                        <a href="#">Change Password</a> </p>
                    </div>
                    <div class="col-2">
                      <h5>Newsletters</h5>
                      <a href="#">Edit</a>
                      <p> You are currently not subscribed to any newsletter. </p>
                    </div>
                  </div>
                  <div class="col2-set">
                    <h4>Address Book</h4>
                    <div class="manage_add"><a href="#">Manage Addresses</a> </div>
                    <div class="col-1">
                      <h5>Primary Billing Address</h5>
                      <address>Saraha Smith<br>
                      Marun Palace<br>
                      main rd,  CA, 46532<br>
                      United States<br>
                      T: 888-123-456 <br>
                      <a href="#">Edit Address</a>
                      </address>
                    </div>
                    <div class="col-2">
                      <h5>Primary Shipping Address</h5>
                     Marun Palace<br>
                      main rd,  CA, 46532<br>
                      United States<br>
                      T: 888-123-456 <br>
                      <a href="#">Edit Address</a>
                      </address>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
          <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
            <div class="side-banner"><img src="images/side-banner.jpg" alt="banner"></div>
            <div class="block block-account">
              <div class="block-title">My Account</div>
              <div class="block-content">
                <ul>
                  <li class="current"><a>Account Dashboard</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/customer/account/edit/">Account Information</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/customer/address/">Address Book</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/sales/order/history/">My Orders</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/sales/billing_agreement/">Billing Agreements</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/sales/recurring_profile/">Recurring Profiles</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/review/customer/">My Product Reviews</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/tag/customer/">My Tags</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/wishlist/">My Wishlist</a></li>
                  <li><a href="http://demo.magentomagik.com/computerstore/downloadable/customer/products/">My Downloadable</a></li>
                  <li class="last"><a href="http://demo.magentomagik.com/computerstore/newsletter/manage/">Newsletter Subscriptions</a></li>
                </ul>
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