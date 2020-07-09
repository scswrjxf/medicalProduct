<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style type="text/css">
</style>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
    <div class="right">
        <div class="location" style="margin-bottom: 20px;margin-top: 10px;">
            <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
            <span style="color: black;"> 订单管理页面 >>  修改订单状态页面</span>
        </div>
        <div class="providerView">
            <p><strong>订单编号：</strong><span>${orderInfor.code }</span></p>
            <p><strong>订单内容：</strong><span>${orderInfor.orderName }</span></p>
            <p><strong>收货人：</strong><span>${orderInfor.uId.userId}</span></p> 
            <p><strong>订单金额：</strong><span>${orderInfor.total }</span></p>
            <p><strong>下单日期：</strong><span><fmt:formatDate value="${orderInfor.orderDate}" pattern="yyyy年MM月dd日 HH:mm:ss"/></span></p>
            <p><strong>订单状态：</strong>	
            	<span>
            		<c:if test="${orderInfor.orderStatus == 0 }">待发货</c:if>
					<c:if test="${orderInfor.orderStatus == 1 }">待收货</c:if>
					<c:if test="${orderInfor.orderStatus == 2 }">已收货</c:if>
				</span>
			</p>
			<div class="providerAddBtn" style="padding: 0 0px;margin: 0 0px;">
				<c:if test="${orderInfor.orderStatus == 0 }">
					<a style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 80px 0px 40px" class="userpass" 
					href="${pageContext.request.contextPath}/serverXF/orderStatus?oid=${orderInfor.oid}&orderStatus=1">发货</a>
				</c:if>
				<c:if test="${orderInfor.orderStatus == 1}">
					<a href="#" style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 80px 0px 40px" class="userpass">待收货</a>
				</c:if>
				
            	<a style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 0px 0px 0px" class="userpass" id="back" name="back" value="返回" >返回</a>
            </div>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/manage/common/foot.jsp" %>
<script>
$(function(){
	
	// 单击 back 按钮，返回到 orderlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/serverXF/orderlist";
	});
});
</script>



