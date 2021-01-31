<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />
<title>搜索商品</title>

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/simple-line-icons.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/revslider.css" >
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body class="list-page"> 
<div id="page">
  <!-- Header -->
  <%@ include file="common/header.jsp" %> 
  <!-- end header -->
  
  <!-- Main Container -->
  <section class="main-container col2-left-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-sm-push-3"> 
          <!-- Breadcrumbs -->
          <div class="breadcrumbs">
            <ul>
              
            </ul>
          </div>
          <!-- Breadcrumbs End -->
          <div>
            <h2 class="page-heading"> <span class="page-heading-title">搜索结果</span> </h2>
          </div>
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="${pageContext.request.contextPath}/statics/images/category-img1.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag"> 2020</div>
                      <h2 class="cat-heading">温度计</h2>
                      <p> 40% 折扣 &sdot; 免费 发货 </p>
                    </div>
                  </div>
                  <!-- End Item --> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="${pageContext.request.contextPath}/statics/images/category-img2.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Xperia 品牌</div>
                      <h2 class="cat-heading">一次性 口罩</h2>
                      <p>节省 40%</p>
                    </div>
                    <!-- End Item --> 
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- =============================循环输出符合要求的商品======================================= -->
          <article class="col-main">
            <div class="category-products">
              <ol class="products-list" id="products-list">
              <c:forEach items="${searchgoods}" var="search">
                <li class="item first">
                  <div class="product-image"> <a href="${pageContext.request.contextPath}/product_detail/${search.gid}" title="HTC Rhyme Sense"> 
                  <img class="small-image" src="${pageContext.request.contextPath}/statics/file/${search.goodsPhoto}" alt="HTC Rhyme Sense"> </a>
                  </div>
                  <div class="product-shop">
                    <h2 class="product-name"><a href="${pageContext.request.contextPath}/product_detail/${search.gid}" title="HTC Rhyme Sense">${search.goodsName}</a></h2>
                    <div class="ratings">
                      <div class="rating-box">
                        <div style="width:50%" class="rating"></div>
                      </div>
                      <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#review-form">Add Your Review</a> </p>
                    </div>
                    <div class="desc std">
                      <p>${search.goodsDesc}</p>
                      <p><a class="link-learn" title="" href="product_detail.jsp">Learn More</a> </p>
                    </div>
                    <div class="price-box">
                      <p class="old-price"> <span class="price-label"></span> <span class="price"> </span> </p>
                      <p class="special-price"> <span class="price-label"></span> <span class="price">￥${search.goodsPrice} </span> </p>
                    </div>
                    <div class="actions"> 
                    <a href="${pageContext.request.contextPath}/addcartsearch/${search.gid}">
                      <button class="button btn-cart ajx-cart" title="添加到购物车" type="button"><span>添加到购物车</span></button>
                 	</a>
                 <!--      <span class="add-to-links"> 
                      	<a title="加入收藏" class="button link-wishlist" href="wishlist.jsp"></a>  
                      </span> 
                 -->
                    </div>
                  </div>
                </li>
                </c:forEach>
              </ol>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <!-- =========================  aside 开始    ================== -->
        <%@ include file="common/aside.jsp" %>
        <!-- ==============================aside 结束 ======================== -->
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
 
<!-- JavaScript --> 
<script src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/common.js"></script> 

<script src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
</body>
</html>
