<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.css"/>

	<script
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>

	<script
		src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>
<!-- --------------------category-products开始------------------------- -->
<div class="category-products">
	<ol class="products-list" id="products-list">
		<c:forEach items="${goods}" var="g">
			<li class="item first">
				<div class="product-image">
					<a
						href="${pageContext.request.contextPath}/product_detail/${g.gid}"
						title="HTC Rhyme Sense"> <img class="small-image"
						src="${pageContext.request.contextPath}/statics/file/${g.goodsPhoto}"
						alt="HTC Rhyme Sense">
					</a>
				</div>
				<div class="product-shop">
					<h2 class="product-name">
						<a
							href="${pageContext.request.contextPath}/product_detail/${g.gid}"
							title="HTC Rhyme Sense">${g.goodsName}</a>
					</h2>
					<div class="ratings">
						<div class="rating-box">
							<div style="width: 50%" class="rating"></div>
						</div>
						<p class="rating-links">
							<a href="#">1 Review(s)</a> <span class="separator">|</span> <a
								href="#review-form">Add Your Review</a>
						</p>
					</div>
					<div class="desc std">
						<p>${g.goodsDesc}</p>
						<p>
							<a class="link-learn" title="" href="product_detail.jsp">Learn
								More</a>
						</p>
					</div>
					<div class="price-box">
						<p class="special-price">
							<span class="price-label"></span> <span class="price">￥${g.goodsPrice}
							</span>
						</p>
					</div>
					<div class="actions">
						<c:choose>
							<c:when test="${!empty loginer }">
								<a
									href="${pageContext.request.contextPath}/addcartlist/${g.gid}">
									<button class="button btn-cart ajx-cart" title="添加到购物车"
										type="button">
										<span>添加到购物车</span>
									</button>
								</a>
							</c:when>
							<c:otherwise>
								<div class="dlcart">
									<button class="button btn-cart ajx-cart" title="添加到购物车"
										type="button">
										<span>添加到购物车</span>
									</button>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</li>
		</c:forEach>
	</ol>
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/swipebox.css">
<script
	src="${pageContext.request.contextPath}/statics/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$(".swipebox").swipebox();
	});
</script>
<div class="col-md-12 text-center">
	<nav style="background-color: white;margin-bottom: 20px;">
		<ul class="pagination pagination-lg">${pageStr }
		</ul>
	</nav>
</div>
</div>


<script>
//使用Ajax实现分页效果
	$(function() {
		$("nav [href]")
				.click(
						function(event) {
							event.preventDefault(); // 阻止事件默认行为
							$
									.ajax(
											"${pageContext.request.contextPath}/user/ajax_page_list",
											{
												type : "POST", // 请求方式为POST
												data : {
													page : $(this).attr('page')
												}, // 提交的数据
												success : function(x) { // 请求成功
													// 得到的信息列表
													var list = x[0];
													var div = $(".products-list");
													// 清空div内容
													div.empty();// 清空里面的所有内容
													// 循环遍历列表
													for ( var i in list) {
														var str = '<li class="item first"><div class="product-image"><a href="${pageContext.request.contextPath}/product_detail/'
																+list[i].gid
																+'"title="HTC Rhyme Sense"><img class="small-image" src="${pageContext.request.contextPath}/statics/file/'
																+list[i].goodsPhoto
																+'" alt="HTC Rhyme Sense"></a></div><div class="product-shop"><h2 class="product-name">'
																+ '<a href="${pageContext.request.contextPath}/product_detail/'
																+list[i].gid
																+'" title="HTC Rhyme Sense">'
																+ list[i].goodsName
																+ '</a></h2><div class="ratings"><div class="rating-box"><div style="width: 50%" class="rating"></div>'
																+ '</div><p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#review-form">Add Your Review</a>'
																+ '</p></div><div class="desc std"><p>'
																+ list[i].goodsDesc
																+ '</p><p><a class="link-learn" title="" href="product_detail.jsp">Learn'
																+ ' More</a></p></div><div class="price-box"><p class="special-price"><span class="price-label"></span> <span class="price">￥'
																+ list[i].goodsPrice
																+ '</span></p></div><div class="actions"><c:choose><c:when test="${!empty loginer }"><a href="${pageContext.request.contextPath}/addcartlist/'
																+list[i].gid
																+'"><button class="button btn-cart ajx-cart" title="添加到购物车" type="button"><span>添加到购物车</span>'
																+ '</button></a></c:when><c:otherwise><div class="dlcart"><button class="button btn-cart ajx-cart" title="添加到购物车" type="button"><span>添加到购物车'
																+ '</span></button></div></c:otherwise></c:choose></div></div></li>';
																// 往div中放入内容				
														div.append(str);
													}
													// 得到当前分页数量
													var page = x[1];
													$("nav ul a").first().attr(
															'page',
															parseInt(page) - 1);
													$("nav ul a").eq(1).html(
															page);
													$("nav ul a").last().attr(
															'page',
															parseInt(page) + 1);
												},
												error : function() { // 请求失败
													alert("请求失败");
												},
												dataType : "json"
											});
						});
	});
</script>
<!-- ---------------------------category-products结束-------------------------------- -->