<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style type="text/css">
</style>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>评论管理页面 >> 评论审核页面</span>
        </div>
        <div class="providerView">
            <p><strong>评论的商品：</strong><span>${commentInfor.goodsName.goodsName }</span></p>
            <p><strong>评论的用户：</strong><span>${commentInfor.uId.userId }</span></p>
            <p><strong>评论的内容：</strong><span>${commentInfor.commentMessage}</span></p>
            <p><strong>评论用户头像：</strong><span><img alt="" src="${pageContext.request.contextPath}/statics/file/${commentInfor.uId.userPhoto }"></span></p>
            <p><strong>评论日期：</strong><span><fmt:formatDate value="${commentInfor.commentDate}" pattern="yyyy年MM月dd日 HH:mm:ss"/></span></p>
            <div class="providerAddBtn" style="padding: 0 0px;margin: 0 0px;">
				<c:if test="${commentInfor.commentIspass == 0}">
					<a style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 80px 0px 40px" class="userpass" 
					href="${pageContext.request.contextPath}/serverXF/commentpass?commentId=${commentInfor.commentId}&commentIspass=1">审核</a>
				</c:if>
				<c:if test="${commentInfor.commentIspass == 1}">
					<a href="#" style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 80px 0px 40px" class="userpass">已审核</a>
				</c:if>
				
            	<a style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 0px 0px 0px" class="userpass" id="back" name="back" value="返回" >返回</a>
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



