<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
	<div class="side-banner">
		<img
			src="${pageContext.request.contextPath}/statics/images/side-banner.jpg"
			alt="banner">
	</div>
	<div class="block block-layered-nav">
		<div class="block-title">选购</div>
		<div class="block-content">
			<p class="block-subtitle">所有商品分类</p>
			<dl id="narrow-by-list">
				<dd class="odd">
					<ol>
						<li><a href="${pageContext.request.contextPath}/user/list">全部商品
						</a></li>
						<c:forEach items="${category }" var="ctg">
							<li><a
								href="${pageContext.request.contextPath}/grid?categoryId=${ctg.categoryId}">${ctg.category}</a>
							</li>
						</c:forEach>
					</ol>
				</dd>
				<dt class="even">制造商</dt>
				<dd class="even">
					<ol>
						<li><a href="#">品牌</a></li>
						<li><a href="#">公司</a></li>
						<li><a href="#">徽标时尚</a></li>
					</ol>
				</dd>
				<dt class="odd">颜色</dt>
				<dd class="odd">
					<ol>
						<li><a href="#">绿色</a></li>
						<li><a href="#">白色</a></li>
						<li><a href="#">黑色</a></li>
						<li><a href="#">灰色</a></li>
						<li><a href="#">深灰色</a></li>
						<li><a href="#">蓝色</a></li>
					</ol>
				</dd>
				<dt class="last even">尺寸</dt>
				<dd class="last even">
					<ol>
						<li><a href="#">S码</a></li>
						<li><a href="#">M码</a></li>
						<li><a href="#">L码</a></li>
						<li><a href="#">XL码</a></li>
					</ol>
				</dd>
			</dl>
		</div>
	</div>
	<div class="block block-compare">
		<div class="block-title ">比较产品</div>
		<div class="block-content">
			<ol id="compare-items">
				<li class="item odd"><input type="hidden" value="2173"
					class="compare-item-id"> <a class="btn-remove1"
					title="Remove This Item" href="#"></a> <a href="#"
					class="product-name">棉质蜂窝浴巾</a></li>
				<li class="item last even"><input type="hidden" value="2174"
					class="compare-item-id"> <a class="btn-remove1"
					title="Remove This Item" href="#"></a> <a href="#"
					class="product-name"> 金黑色棕色全框飞行员造型</a></li>
			</ol>
			<div class="ajax-checkout">
				<button type="submit" title="Submit" class="button button-compare">
					<span>比较</span>
				</button>
				<button type="submit" title="Submit" class="button button-clear">
					<span>明确</span>
				</button>
			</div>
		</div>
	</div>
	<div class="featured-add-box">
		<div class="featured-add-inner">
			<a href="#"> <img
				src="${pageContext.request.contextPath}/statics/images/hot-trends-banner.jpg"
				alt="f-img"></a>
			<div class="banner-content">
				<div class="banner-text">清仓大甩卖</div>
				<div class="banner-text1">
					热 <span>销</span>
				</div>
				<p>享受20%的折扣</p>
			</div>
		</div>
	</div>
</aside>