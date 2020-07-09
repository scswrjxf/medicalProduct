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
<title>商品展示页面(竖版)</title>

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
              <li class="home"> <a href="index.jsp" title="Go to Home Page">Home</a> <span>/</span> </li>
              <li class="category1599"> <a href="grid.jsp" title="">Women</a> <span>/ </span> </li>
              <li class="category1600"> <a href="grid.jsp" title="">Styliest Bag</a> <span>/</span> </li>
              <li class="category1601"> <strong>Clutch Handbags</strong> </li>
            </ul>
          </div>
          <!-- Breadcrumbs End -->
          <div>
            <h2 class="page-heading"> <span class="page-heading-title">Women</span> </h2>
          </div>
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="${pageContext.request.contextPath}/statics/images/category-img1.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Season 2018</div>
                      <h2 class="cat-heading">thermometer</h2>
                      <p>GET 40% OFF &sdot; Free Delivery </p>
                    </div>
                  </div>
                  <!-- End Item --> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="${pageContext.request.contextPath}/statics/images/category-img2.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Xperia Brands</div>
                      <h2 class="cat-heading">Disposable Mask</h2>
                      <p>Save 70% on all items</p>
                    </div>
                    <!-- End Item --> 
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          <article class="col-main">
            <div class="toolbar">
              <div class="display-product-option">
                <div class="sorter">
                  <div class="view-mode"> <a class="button-grid" title="Grid" href="grid.jsp">&nbsp;</a><span class="button-active button-list" title="List">&nbsp;</span> </div>
                </div>
                <div class="pages">
                  <label>Page:</label>
                  <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
                <div class="product-option-right">
                  <div class="sort-by">
                    <label class="left">Sort By: </label>
                    <ul>
                      <li><a href="#">Position<span class="right-arrow"></span></a>
                        <ul>
                          <li><a href="#">Name</a></li>
                          <li><a href="#">Price</a></li>
                          <li><a href="#">Position</a></li>
                        </ul>
                      </li>
                    </ul>
                    <a class="button-asc left" href="#" title="Set Descending Direction"><span class="top_arrow"></span></a> </div>
                  <div class="pager">
                    <div class="limiter">
                      <label>View: </label>
                      <ul>
                        <li><a href="#">15<span class="right-arrow"></span></a>
                          <ul>
                            <li><a href="#">20</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">35</a></li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="category-products">
              <ol class="products-list" id="products-list">
              <c:forEach items="${searchgoods}" var="search">
                <li class="item first">
                  <div class="product-image"> <a href="${pageContext.request.contextPath}/product_detail/${g.gid}" title="HTC Rhyme Sense"> 
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
                      <p class="old-price"> <span class="price-label"></span> <span class="price"> $442.99 </span> </p>
                      <p class="special-price"> <span class="price-label"></span> <span class="price">${search.goodsPrice} </span> </p>
                    </div>
                    <div class="actions"> 
                    <a href="${pageContext.request.contextPath}/addcart/${search.gid}">
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
            <div class="toolbar">
              <div class="display-product-option">
                <div class="pages">
                  <label>Page:</label>
                  <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
                <div class="product-option-right">
                  <div class="sort-by">
                    <label class="left">Sort By: </label>
                    <ul>
                      <li><a href="#">Position<span class="right-arrow"></span></a>
                        <ul>
                          <li><a href="#">Name</a></li>
                          <li><a href="#">Price</a></li>
                          <li><a href="#">Position</a></li>
                        </ul>
                      </li>
                    </ul>
                    <a class="button-asc left" href="#" title="Set Descending Direction"><span class="top_arrow"></span></a> </div>
                  <div class="pager">
                    <div class="limiter">
                      <label>View: </label>
                      <ul>
                        <li><a href="#">15<span class="right-arrow"></span></a>
                          <ul>
                            <li><a href="#">20</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">35</a></li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <div class="side-banner"><img src="${pageContext.request.contextPath}/statics/images/side-banner.jpg" alt="banner"></div>
          <div class="block block-layered-nav">
            <div class="block-title">Shop By</div>
            <div class="block-content">
              <p class="block-subtitle">Shopping Options</p>
              <dl id="narrow-by-list">
                <dt class="odd">Price</dt>
                <dd class="odd">
                  <ol>
                    <li> <a href="#"><span class="price">$0.00</span> - <span class="price">$99.99</span></a> (6) </li>
                    <li> <a href="#"><span class="price">$100.00</span> and above</a> (6) </li>
                  </ol>
                </dd>
                <dt class="even">Manufacturer</dt>
                <dd class="even">
                  <ol>
                    <li> <a href="#">TheBrand</a> (9) </li>
                    <li> <a href="#">Company</a> (4) </li>
                    <li> <a href="#">LogoFashion</a> (1) </li>
                  </ol>
                </dd>
                <dt class="odd">Color</dt>
                <dd class="odd">
                  <ol>
                    <li> <a href="#">Green</a> (1) </li>
                    <li> <a href="#">White</a> (5) </li>
                    <li> <a href="#">Black</a> (5) </li>
                    <li> <a href="#">Gray</a> (4) </li>
                    <li> <a href="#">Dark Gray</a> (3) </li>
                    <li> <a href="#">Blue</a> (1) </li>
                  </ol>
                </dd>
                <dt class="last even">Size</dt>
                <dd class="last even">
                  <ol>
                    <li> <a href="#">S</a> (6) </li>
                    <li> <a href="#">M</a> (6) </li>
                    <li> <a href="#">L</a> (4) </li>
                    <li> <a href="#">XL</a> (4) </li>
                  </ol>
                </dd>
              </dl>
            </div>
          </div>
          <div class="block block-cart">
            <div class="block-title ">My Cart</div>
            <div class="block-content">
              <div class="summary">
                <p class="amount">There are <a href="shopping_cart.jsp">2 items</a> in your cart.</p>
                <p class="subtotal"> <span class="label">Cart Subtotal :</span> <span class="price">$27.99</span> </p>
              </div>
              <div class="ajax-checkout">
                <button class="button button-checkout" title="Submit" type="submit"><span>Checkout</span></button>
              </div>
              <p class="block-subtitle">Recently added item(s) </p>
              <ul>
                <li class="item"> <a href="shopping_cart.jsp" title="Fisher-Price Bubble Mower" class="product-image"><img src="${pageContext.request.contextPath}/statics/products-images/product10.jpg" alt="Fisher-Price Bubble Mower"></a>
                  <div class="product-details">
                    <div class="access"> <a href="shopping_cart.jsp" title="Remove This Item" class="btn-remove1"> <span class="icon"></span> Remove </a> </div>
                    <strong>1</strong> x <span class="price">$19.99</span>
                    <p class="product-name"> <a href="shopping_cart.jsp">Cotton Honeycomb Hamam Bath Towel</a> </p>
                  </div>
                </li>
                <li class="item last"> <a href="shopping_cart.jsp" title="Prince Lionheart Jumbo Toy Hammock" class="product-image"><img src="${pageContext.request.contextPath}/statics/products-images/product4.jpg" alt="Prince Lionheart Jumbo Toy Hammock"></a>
                  <div class="product-details">
                    <div class="access"> <a href="shopping_cart.jsp" title="Remove This Item" class="btn-remove1"> <span class="icon"></span> Remove </a> </div>
                    <strong>1</strong> x <span class="price">$8.00</span>
                    <p class="product-name"> <a href="shopping_cart.jsp">Impulse Climate Proof Mountain Rucksack</a> </p>
                    
                    <!--access clearfix--> 
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="block block-compare">
            <div class="block-title ">Compare Products (2)</div>
            <div class="block-content">
              <ol id="compare-items">
                <li class="item odd">
                  <input type="hidden" value="2173" class="compare-item-id">
                  <a class="btn-remove1" title="Remove This Item" href="#"></a> <a href="#" class="product-name">Cotton Honeycomb Hamam Bath Towel</a> </li>
                <li class="item last even">
                  <input type="hidden" value="2174" class="compare-item-id">
                  <a class="btn-remove1" title="Remove This Item" href="#"></a> <a href="#" class="product-name">Golden Black Brown Full Rim Aviator Shape</a> </li>
              </ol>
              <div class="ajax-checkout">
                <button type="submit" title="Submit" class="button button-compare"><span>Compare</span></button>
                <button type="submit" title="Submit" class="button button-clear"><span>Clear</span></button>
              </div>
            </div>
          </div>
          
          <div class="block block-list block-viewed">
            <div class="block-title"> Recently Viewed </div>
            <div class="block-content">
              <ol id="recently-viewed-items">
                <li class="item odd">
                  <p class="product-name"><a href="#">Elegant Men Bandage Black Dresses</a></p>
                </li>
                <li class="item even">
                  <p class="product-name"><a href="#">Bacca Bucci Men's Running Shoes.</a></p>
                </li>
                <li class="item last odd">
                  <p class="product-name"><a href="#">Black Mirror Full Rim Aviator Shape Sunglasses</a></p>
                </li>
              </ol>
            </div>
          </div>
          <div class="block block-poll">
            <div class="block-title">Community Poll </div>
            <form id="pollForm" action="#" method="post" onSubmit="return validatePollAnswerIsSelected();">
              <div class="block-content">
                <p class="block-subtitle">What is your favorite Magento feature?</p>
                <ul id="poll-answers">
                  <li class="odd">
                    <input type="radio" name="vote" class="radio poll_vote" id="vote_5" value="5">
                    <span class="label">
                    <label for="vote_5">Layered Navigation</label>
                    </span> </li>
                  <li class="even">
                    <input type="radio" name="vote" class="radio poll_vote" id="vote_6" value="6">
                    <span class="label">
                    <label for="vote_6">Price Rules</label>
                    </span> </li>
                  <li class="odd">
                    <input type="radio" name="vote" class="radio poll_vote" id="vote_7" value="7">
                    <span class="label">
                    <label for="vote_7">Category Management</label>
                    </span> </li>
                  <li class="last even">
                    <input type="radio" name="vote" class="radio poll_vote" id="vote_8" value="8">
                    <span class="label">
                    <label for="vote_8">Compare Products</label>
                    </span> </li>
                </ul>
                <div class="actions">
                  <button type="submit" title="Vote" class="button button-vote"><span>Vote</span></button>
                </div>
              </div>
            </form>
          </div>
          <div>
            <div class="featured-add-box">
              <div class="featured-add-inner"> <a href="#"> <img src="${pageContext.request.contextPath}/statics/images/hot-trends-banner.jpg" alt="f-img"></a>
                <div class="banner-content">
                <div class="banner-text">Clearance Sale</div>
                <div class="banner-text1">Hot <span>Sale</span> </div>
                <p>Get upto 20% off</p>
                <a href="#" class="view-bnt">Shop now <i class="fa fa-chevron-circle-right"></i></a> </div>
              </div>
            </div>
          </div>
          <div class="block block-tags">
            <div class="block-title"> Popular Tags</div>
            <div class="block-content">
              <ul class="tags-list">
                <li><a href="#" style="font-size:98.3333333333%;">Camera</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">Hohoho</a></li>
                <li><a href="#" style="font-size:145%;">SEXY</a></li>
                <li><a href="#" style="font-size:75%;">Tag</a></li>
                <li><a href="#" style="font-size:110%;">Test</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">bones</a></li>
                <li><a href="#" style="font-size:110%;">cool</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">cool t-shirt</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">crap</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">good</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">green</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">hip</a></li>
                <li><a href="#" style="font-size:75%;">laptop</a></li>
                <li><a href="#" style="font-size:75%;">mobile</a></li>
                <li><a href="#" style="font-size:75%;">nice</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">phone</a></li>
                <li><a href="#" style="font-size:98.3333333333%;">red</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">tight</a></li>
                <li><a href="#" style="font-size:75%;">trendy</a></li>
                <li><a href="#" style="font-size:86.6666666667%;">young</a></li>
              </ul>
              <div class="actions"> <a href="#" class="view-all">View All Tags</a> </div>
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
 
<!-- JavaScript --> 
<script src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/common.js"></script> 

<script src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script> 
<script src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
</body>
</html>
