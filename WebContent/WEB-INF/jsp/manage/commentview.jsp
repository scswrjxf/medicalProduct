<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
 <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>评论管理页面 >> 评论信息查看页面</span>
        </div>
        <div class="providerView">
            <p><strong>评论的商品：</strong><span>${commentInfor.goodsName.goodsName }</span></p>
            <p><strong>评论的用户：</strong><span>${commentInfor.uId.userId }</span></p>
            <p><strong>评论的内容：</strong><span>${commentInfor.commentMessage}</span></p>
            <p><strong>评论用户头像：</strong><span>${commentInfor.uId.userPhoto }</span></p>
            <p><strong>评论日期：</strong><span><fmt:formatDate value="${commentInfor.commentDate}" pattern="yyyy年MM月dd日 HH:mm:ss"/></span></p>
            <p><strong>是否审核：</strong>	
            	<span>
            		<c:if test="${commentInfor.commentIspass == 0 }">未审核</c:if>
					<c:if test="${commentInfor.commentIspass == 1 }">已审核</c:if>
				</span>
			</p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
            </div>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/manage/common/foot.jsp" %>
<script>
$(function(){
	// 单击 back 按钮，返回到 commentlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/serverXF/commentlist";
	});
});
</script>
