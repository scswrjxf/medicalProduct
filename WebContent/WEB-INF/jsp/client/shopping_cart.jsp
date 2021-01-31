<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>购物车</title>

<!-- Favicons Icon -->
<link rel="icon" href="#" type="image/x-icon" />
<link rel="shortcut icon" href="#" type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/simple-line-icons.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/statics/css/jquery.mobile-menu.css">

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">
</head>

<body class="shopping-cart-page">
	<div id="page">
		<!-- Header -->
		<%@ include file="common/header.jsp"%>
		<!-- end header -->
		<!-- Main Container -->
		<section class="main-container col1-layout">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-xs-12">
						<div class="block block-company"
							style="float: left; margin-left: -40px;">
							<ol id="recently-viewed-items">
								<li class="item odd"><a href="${pageContext.request.contextPath}/cserver/viewuser">用户设置</a></li>
								<li class="item odd"><strong>购物车</strong></li>
								<li class="item odd"><a
									href="${pageContext.request.contextPath}/clientXF/my_collect">我的收藏</a></li>
								<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/my_comment">我的评论</a></li>
									<li class="item odd"><a href="${pageContext.request.contextPath}/clientXF/goodsadd">添加商品</a></li>
								<li class="item odd"><a
									href="${pageContext.request.contextPath}/orderlist">我的订单</a></li>
								<li class="item odd"><a
									href="${pageContext.request.contextPath}/clientXF/alter_password">修改密码</a></li>
							</ol>
						</div>
						<article class="col-main">
							<div class="cart">
								<div class="page-title" style="padding-left: 180px;">
									<h2>购物车</h2>
								</div>
								<div class="table-responsive" style="padding-left: 180px;">
									<form>
										<input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
										<fieldset>
											<table class="data-table cart-table" id="shopping-cart-table">
												<colgroup>
													<col width="1">
													<col>
													<col width="1">
													<col width="1">
													<col width="1">
													<col width="1">
													<col width="1">
												</colgroup>
												<thead>
													<tr class="first last">
														<th rowspan="1">&nbsp;</th>
														<th rowspan="1"><span class="nobr">商品名称</span></th>
														<th rowspan="1"></th>
														<th colspan="1" class="a-center" width="5%"><span
															class="nobr">单价</span></th>
														<th class="a-center" rowspan="1" width="5%">数量</th>
														<th colspan="1" class="a-center" width="5%">小计</th>
														<th class="a-center" rowspan="1" width="5%">操作</th>
													</tr>
												</thead>
												<tfoot>
													<tr class="first last">
														<td class="a-right last" colspan="50"><a id="jxgw"
															class="button btn-continue"><span>继续购物</span></a>
															<button useralice="${loginer.userId }"
																id="empty_cart_button" class="button btn-empty"
																title="Clear Cart" value="empty_cart"
																name="update_cart_action" type="submit">
																<span>清空购物车</span>
															</button></td>
													</tr>
												</tfoot>
												<tbody class="qingk">
													<c:forEach items="${cartlist}" var="cartlist">
														<tr class="first odd">
															<td class="image"><a class="product-image"
																title="Sample Product"
																href="${pageContext.request.contextPath}/product_detail/${cartlist.goodsId}"><img
																	width="75" alt="Sample Product"
																	src="${pageContext.request.contextPath}/statics/file/${cartlist.gPhoto}"></a></td>
															<td><h2 class="product-name">
																	<a href="#/women-s-crepe-printed-black/">${cartlist.goodsName}</a>
																</h2></td>
															<td class="a-center"><a title="Edit item parameters"
																class="edit-bnt" href="#configure/id/15945/"></a></td>
															<td class="a-right"><span class="cart-price">
																	<span class="price">￥${cartlist.goodsPrice}</span>
															</span></td>
															<td id="qkNumber" class="a-center movewishlist">
																<input class="Number" style="text-align: center;"useralice="${cartlist.userAlice}" cId="${cartlist.cid}"
																goodsname="${cartlist.goodsName}" size="4" value="${cartlist.goodsNumber}"></td>
															<td class="a-right movewishlist"><span
																class="cart-price"> <span class="price"
																	id="newprice">￥${cartlist.goodsNumber*cartlist.goodsPrice}</span>
															</span></td>
															<td class="a-center last"><a id="delete"
																href="${pageContext.request.contextPath}/delCartByCid/${cartlist.cid}"
																class="button remove-item" title="删除"><span><span>删除</span></span></a></td>
														</tr>
														<c:set var="sum" value="${sum+cartlist.goodsNumber*cartlist.goodsPrice}"></c:set>
														<c:set var="orderName"
															value="${orderName}${cartlist.goodsName}*${cartlist.goodsNumber}"></c:set>
													</c:forEach>
												</tbody>
											</table>
										</fieldset>
									</form>
								</div>
								<!-- BEGIN CART COLLATERALS -->
								<div class="cart-collaterals row">
									<div class="totals col-sm-4" style="float: right;">
										<h3>购物车总计</h3>
										<div class="inner">
											<table class="table shopping-cart-table-total"
												id="shopping-cart-totals-table">
												<colgroup>
													<col>
													<col width="1">
												</colgroup>
												<tfoot>
												</tfoot>
												<tbody>
													<tr>
														<td colspan="1" class="a-left" style="">总计</td>
														<td class="a-right" style=""><span class="price"
															id="sum">￥${sum }</span></td>
													</tr>
												</tbody>
											</table>
											<ul class="checkout">
												<div id="jspj">
												<li id="js" Sum="${ sum}" ordername="${orderName }" useralice="${loginer.userId }">
													<!-- <a > -->
													<button class="button btn-proceed-checkout"
														title="Proceed to Checkout" type="button">
														<span>进行结算</span>
													</button> <!-- </a> -->
												</li>
												</div>
												<br>
												<li><a title="Checkout with Multiple Addresses"
													href="multiple_addresses.html">结帐多个地址</a></li>
												<br>
											</ul>
										</div>
										<!--inner-->
									</div>
								</div>
								<!--cart-collaterals-->
								<div class="crosssel">
									<div class="new_title">
										<h2>热销产品</h2>
									</div>
									<div class="category-products">
										<ul class="products-grid">
											<c:forEach items="${remaiList }" var="remai">
												<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
													<div class="item-inner">
														<div class="item-img">
															<div class="item-img-info">
																<a class="product-image" title="Retis lapen casen"
																	href="${pageContext.request.contextPath}/product_detail/${remai.gid}"> 
																	<img alt="Retis lapen casen" style="width: 250px;height: 250px;"
																	src="${pageContext.request.contextPath}/statics/file/${remai.goodsPhoto}">
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
																	<a title="Retis lapen casen" href="product_detail.html">
																		${remai.goodsName} </a>
																</div>
																<div class="brand">Impulse</div>
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
																			<span class="regular-price"> <span
																				class="price">${remai.goodsPrice}</span>
																			</span>
																		</div>
																	</div>
																	<c:choose>
																			<c:when test="${!empty loginer }">
																				<div class="action">
																					<a href="${pageContext.request.contextPath}/addcartcart/${remai.gid}">
																					<button id="cart" class="button btn-cart" type="button" title=""
																						data-original-title="Add to Cart" goodsid="${remai.gid}">
																						<i class="fa fa-shopping-basket"></i>
																					</button>
																					</a>
																				</div>
																			</c:when>
																			<c:otherwise>
																				<div class="dlcart">
																					<div class="action">
																						<button id="cart" class="button btn-cart" type="button" title=""
																							data-original-title="Add to Cart" >
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
		<%@ include file="common/footer.jsp"%>
		<!-- End Footer -->
	</div>
	<!-- mobile-menu -->
	<%@ include file="common/mobile_menu.jsp"%>
	<!-- End Footer -->
	<!-- JavaScript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/revslider.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/common.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/jquery.mobile-menu.min.js"></script>

	<script type="text/javascript">
		$(function() {
			// 商品数量
			// 为 id 为 Number 的输入框添加 blur 事件，发送 ajax 请求到控制器
			$("body").on("blur",".Number",function() {
					// 获取 goodsNumber 的值
					var goodsnumber = $(this).val();
					var goodsname = $(this).attr("goodsname");
					var useralice = $(this).attr("useralice");
					var cId = $(this).attr("cId")
					//发送异步请求，把获取的值传递到控制器
					$.ajax({
							type : "POST",
							url : "${pageContext.request.contextPath}/updateNumber",
							data : {goodsNumber : goodsnumber,goodsName : goodsname,cid : cId},
							success : function(msg) {
							var price = 0;
							var orderName = "";
							$("#shopping-cart-table").empty().append('<colgroup><col width="1"><col>'
													+ '<col width="1"><col width="1"><col width="1"><col width="1">'
													+ '<col width="1"></colgroup><thead><tr class="first last">'
													+ '<th rowspan="1">&nbsp;</th>'
													+ '<th rowspan="1"><span class="nobr">商品名称</span></th>'
													+ '<th rowspan="1"></th>'
													+ '<th colspan="1" class="a-center" width="5%"><span class="nobr">单价</span></th>'
													+ '<th class="a-center" rowspan="1" width="5%">数量</th>'
													+ '<th colspan="1" class="a-center" width="5%">小计</th>'
													+ '<th class="a-center"  rowspan="1" width="5%">操作</th>'
													+ '</tr></thead><tfoot><tr class="first last">'
													+ '<td class="a-right last" colspan="50">'
													+ '<a id="jxgw" class="button btn-continue"><span>继续购物</span></a>'
													+ '<button useralice="${loginer.userAlice }" id="empty_cart_button" class="button btn-empty" title="Clear Cart" value="empty_cart" name="update_cart_action" type="submit"><span>清空购物车</span></button>'
													+ '</td></tr></tfoot>');
									for ( var i in msg) {
										var str = '<tbody class="qingk">'
												+'<tr class="first odd">'
												+ '<td class="image"><a class="product-image" title="Sample Product" href="#/women-s-crepe-printed-black/"><img width="75" alt="Sample Product" src="${pageContext.request.contextPath}/statics/file/'+msg[i].gPhoto+'"></a></td>'
												+ '<td><h2 class="product-name"> <a href="#/women-s-crepe-printed-black/">'
												+ msg[i].goodsName
												+ '</a> </h2></td>'
												+ '<td class="a-center"><a title="Edit item parameters" class="edit-bnt" href="#configure/id/15945/"></a></td>'
												+ '<td class="a-right"><span class="cart-price"> <span class="price">￥'
												+ msg[i].goodsPrice
												+ '</span> </span></td>'
												+ '<td id="qkNumber" class="a-center movewishlist">'
												+ '<input class="Number" style="text-align: center;" useralice="'+msg[i].userAlice+'" cId="'+msg[i].cid+'"  goodsname="'+msg[i].goodsName+'" size="4" value="'+msg[i].goodsNumber+'">'
												+ '</td>'
												+ '<td class="a-right movewishlist"><span class="cart-price"> <span class="price" id="newprice">￥'
												+ msg[i].goodsNumber
												* msg[i].goodsPrice
												+ '</span> </span></td>'
												+ '<td class="a-center last"><a id="delete" href="${pageContext.request.contextPath}/delCartByCid/'+msg[i].cid+'" cid="'+msg[i].cid+'" goodsName="'+msg[i].goodsName+'" class="button remove-item" title="删除" ><span><span id="delete" cId="'+msg[i].cid+'">删除</span></span></a></td>'
												+ '</tr>'
												+'<tbody>';

										price += msg[i].goodsNumber*msg[i].goodsPrice;
										orderName += msg[i].goodsName+ '*'+ msg[i].goodsNumber;
										$("#shopping-cart-table").append(str);
									}
									$("#sum").empty().append('￥' + price);
									$("#jspj").empty().append('<li id="js" Sum="'+price+'" ordername="'+orderName+'" useralice="'+useralice+'">'
													+ '<button class="button btn-proceed-checkout" title="Proceed to Checkout" type="button"><span>进行结算</span></button>'
													+'</li>');
								},
								error : function(XMLHttpRequest,textStatus, errorThrown) {
									alert("异常：" + textStatus+ errorThrown);
								}
							});
					// 禁止提交
					return false;
				});
			//清空购物车
			
			$("body").on("click", "#empty_cart_button", function() {
				var useralice = $(this).attr("userAlice");
				var r = confirm("是否清空购物车");
				var url;
				if (r == true) {
					url = "${pageContext.request.contextPath}/delCart";
				} else {
					return false;
				}
				$.ajax({
					type : "POST",
					url : url,
					data : {userAlice : useralice},
					success : function(msg) {
						if (r == true) {
							$(".qingk").empty();
							$("#cart-sidebar").empty();
						} else {
							return false;
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
					}
				});
			});
			
		$("body").on("click", "#jxgw", function(){
			// 使用了 JavaScirpt 页面跳转方式
			location.href = "${pageContext.request.contextPath}/list";
		});
		//单击结算按钮
		$("body").on("click","#js", function() {
					var Sum = $(this).attr("Sum");
					var ordername = $(this).attr("ordername");
					var useralice=$(this).attr("useralice");
					var r = confirm("是否确认购买");
					var url;
					if (r == true) {
						url = "${pageContext.request.contextPath}/addNewOrder";
					} else {
						return false;
					}
					$.ajax({
						type : "POST",
						url : url,
						data : {orderName:ordername,total:Sum},
						success : function(msg) {
							if (r == true) {
								alert("购买成功，已生成订单");
								$(".qingk").empty();
								$("#cart-sidebar").empty();
							} else {
								return false;
							}
						},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
						}
					});
					
					
				})
			
		});
	</script>
<script type="text/javascript">
$(function(){
	$(".dlcart").click(function(){
		alert("请先登录")
	})
})	
</script>
</body>
</html>


