<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<script
	src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script> 
	
<!-- ---------------------------category-products开始-------------------------------- -->
<div class="category-products">
								<ul class="products-grid">
									<c:forEach items="${goods}" var="g">
										<li class="item col-lg-4 col-md-4 col-sm-4 col-xs-6">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Retis lapen casen"
															href="${pageContext.request.contextPath}/product_detail/${g.gid}">
															<img alt="Retis lapen casen"
															style="width: 250px; height: 250px;"
															src="${pageContext.request.contextPath}/statics/file/${g.goodsPhoto}">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">

															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title">
															<a title="Retis lapen casen"
																href="${pageContext.request.contextPath}/product_detail/${g.gid}">${g.goodsName}</a>
														</div>
														<div class="brand">库存：${g.goodsNumber }</div>
														<div class="rating">
															<div class="ratings">
																<div class="rating-box">
																	<div style="width: 80%" class="rating"></div>
																</div>
																<p class="rating-links">
																	<a href="#">1 Review(s)</a> <span class="separator">|</span>
																	<a href="#">Add Review</a>
																</p>
															</div>
														</div>
														<div class="item-content">
															<div class="item-price">
																<div class="price-box">
																	<span class="regular-price"> <span class="price">${g.goodsPrice}</span>
																	</span>
																</div>
															</div>

															<c:choose>
																<c:when test="${!empty loginer }">
																	<div class="action">
																		<a
																			href="${pageContext.request.contextPath}/addcartgrid?goodsId=${g.gid}&categoryId=${g.categoryId.categoryId}">
																			<button id="cart" class="button btn-cart"
																				type="button" title=""
																				data-original-title="Add to Cart">
																				<i class="fa fa-shopping-basket"></i>
																			</button>
																		</a>
																	</div>
																</c:when>
																<c:otherwise>
																	<div class="dlcart">
																		<div class="action">
																			<button id="cart" class="button btn-cart"
																				type="button" title=""
																				data-original-title="Add to Cart">
																				<i class="fa fa-shopping-basket"></i>
																			</button>
																		</div>
																	</div>
																</c:otherwise>
															</c:choose>

														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div> 

<!-- ---------------------------category-products结束-------------------------------- -->

<!-- 
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
													var div = $(".category-products");
													// 清空div内容
													div.empty();// 清空里面的所有内容
													// 循环遍历列表
													for ( var i in list) {
var str='<li class="item col-lg-4 col-md-4 col-sm-4 col-xs-6"><div class="item-inner"><div class="item-img"><div class="item-img-info">'
+'<a class="product-image" title="Retis lapen casen" href="${pageContext.request.contextPath}/product_detail/'
+ list[i].gid+'">'
+'<img alt="Retis lapen casen" style="width: 250px; height: 250px;" src="${pageContext.request.contextPath}/statics/file/'
+ list[i].goodsPhoto+'">'
+'</a><div class="box-hover"><ul class="add-to-links"></ul></div></div></div><div class="item-info"><div class="info-inner"><div class="item-title">'
+'<a title="Retis lapen casen" href="${pageContext.request.contextPath}/product_detail/'
+list[i].gid+'">'+list[i].goodsName+'</a>'
+'</div><div class="brand">库存：'
+ list[i].goodsNumber+'</div><div class="rating"><div class="ratings">'
+'<div class="rating-box"><div style="width: 80%" class="rating"></div></div><p class="rating-links"><a href="#">1'
+'Review(s)</a> <span class="separator">|</span><a href="#">Add Review</a></p></div></div>'
+'<div class="item-content"><div class="item-price"><div class="price-box"><span class="regular-price">' 
+'<span class="price">${g.goodsPrice}</span></span></div>'
+'</div><c:choose><c:when test="${!empty loginer }">'
+'<div class="action"><a href="${pageContext.request.contextPath}/addcartgrid?goodsId='
+list[i].gid+'&categoryId='+list[i].categoryId.categoryId+'">'
+'<button id="cart" class="button btn-cart" type="button" title="" data-original-title="Add to Cart">'
+'<i class="fa fa-shopping-basket"></i></button>'
+'</a></div></c:when><c:otherwise><div class="dlcart"><div class="action"><button id="cart" class="button btn-cart"'
+'type="button" title="" data-original-title="Add to Cart"><i class="fa fa-shopping-basket"></i>'
+'</button></div></div></c:otherwise></c:choose></div></div></div></div></li>';  
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
 
 
 -->