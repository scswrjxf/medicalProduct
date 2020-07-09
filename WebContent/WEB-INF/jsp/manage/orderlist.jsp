<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>订单管理页面</span>
            </div> 
            <!--订单表-->
            <table class="providerTable" cellpadding="0" cellspacing="0"> 
                <tr class="firstTr">
                    <th width="20%">订单编号</th> 
                    <th width="20%">订单内容</th>
                    <th width="20%">收货人</th>
                    <th width="10%">订单状态</th>
                    <th width="20%">下单时间</th> 
                    <th width="10%">操作</th>
                </tr>
                <c:forEach var="orders" items="${orderList }" varStatus="status">
					<tr>
						<td>
						<span>${orders.code }</span>
						</td>
						<td>
						<span>${orders.orderName}</span>
						</td>
						<td>
							<span>${orders.uId.userId }</span>
						</td>  
						<td>
							<span>
								<c:if test="${orders.orderStatus==0}">待发货</c:if>
								<c:if test="${orders.orderStatus==1}">待收货</c:if>
								<c:if test="${orders.orderStatus==2}">已收货</c:if>
							</span>
						</td> 
						<td>
							<span><fmt:formatDate value="${orders.orderDate }" pattern="yyyy年MM月dd日 HH:mm:ss"/></span> 
						</td> 
						<td>
							<span><a class="viewUser" href="${pageContext.request.contextPath }/serverXF/orderview/${orders.oid }"><img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
							<span><a class="modifyUser" href="${pageContext.request.contextPath }/serverXF/orderverify/${orders.oid}"><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
							<span><a class="deleteOreder" href="javascript:;" oid=${orders.oid } code=${orders.code }><img src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
						</td>
					</tr>
				</c:forEach>
			</table>
        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeOrd">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该订单吗？</p>
           <a href="" id="yes">确定</a>
           <a href="javascript:cancleBtn();" id="no">取消</a>
       </div>
   </div>
</div>

<%@include file="common/foot.jsp" %>
<script>
function openYesOrNoDLG(){
	$('.zhezhao').css('display', 'block');
	$('#removeOrd').fadeIn();
}
function cancleBtn(){
	$('.zhezhao').css('display', 'none');
	$('#removeOrd').fadeOut();
}
function changeDLGContent(contentStr,id){
	var p = $(".removeMain").find("p");
	p.html(contentStr);
	// 把id为yes的a标签的href属性值，进行设置
	var a = $("#yes");
	a.attr("href","${pageContext.request.contextPath}/serverXF/delorder/"+id);
}

$(function(){
	// 点击删除按钮弹出
	$("body").on("click",".deleteOreder",function(){
		ordersObj = $(this);
		changeDLGContent(
				"你确定要删除订单【"+ordersObj.attr("code")+"】吗？",
				ordersObj.attr("oid"));
		openYesOrNoDLG();
	});
});
</script>

