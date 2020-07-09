<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
<div class="right">
	<div class="location" style="margin-bottom: 20px; margin-top: 10px;">
		<strong style="color: black; font-size: 16px;">你现在所在的位置是:</strong> 
		<span style="color: black;"> 订单管理页面 >> 订单信息查看页面</span>
	</div>
	<div class="providerView">
		<p>
			<strong>订单编号：</strong><span>${orderInfor.code }</span>
		</p>
		<p>
			<strong>订单内容：</strong><span>${orderInfor.orderName }</span>
		</p>
		<p>
			<strong>收货人：</strong><span>${orderInfor.uId.userId}</span>
		</p>
		<p>
			<strong>订单金额：</strong><span>${orderInfor.total }</span>
		</p>
		<p>
			<strong>下单日期：</strong><span><fmt:formatDate
					value="${orderInfor.orderDate}" pattern="yyyy年MM月dd日 HH:mm:ss" /></span>
		</p>
		<p>
			<strong>订单状态：</strong> <span> <c:if
					test="${orderInfor.orderStatus == 0 }">待发货</c:if> <c:if
					test="${orderInfor.orderStatus == 1 }">待收货</c:if> <c:if
					test="${orderInfor.orderStatus == 2 }">已收货</c:if>
			</span>
		</p>
		<div class="providerAddBtn">
			<input type="button" id="back" name="back" value="返回">
		</div>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/manage/common/foot.jsp"%>
<script>
	$(function() {
		// 单击 back 按钮，返回到 orderlist
		$("#back")
				.click(
						function() {
							// 使用了 JavaScirpt 页面跳转方式
							location.href = "${pageContext.request.contextPath}/serverXF/orderlist";
						});
	});
</script>
