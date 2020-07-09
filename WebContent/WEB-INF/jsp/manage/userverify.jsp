<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style type="text/css">
</style>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户审核页面</span>
        </div>
        <div class="providerView">
            <p><strong>用户ID：</strong><span>${userInfor.userId }</span></p>
            <p><strong>用户昵称：</strong><span>${userInfor.userAlice }</span></p>
            <p><strong>用户性别：</strong><span>${userInfor.userSex }</span></p>
            <p><strong>注册日期：</strong><span><fmt:formatDate value="${userInfor.userCreateDate}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>用户邮箱：</strong><span>${userInfor.userEmail }</span></p>
            <p><strong>用户头像：</strong><span><img style="height: 100px;width: 100px;"
            src="${pageContext.request.contextPath }/statics/images/${userInfor.userPhoto }" alt="头像" title="头像"/></span></p>
            <p><strong>用户角色：</strong>	
            	<span>
            		<c:if test="${userInfor.role == 0 }">普通用户</c:if>
					<c:if test="${userInfor.role == 1 }">系统管理员</c:if>
				</span>
			</p>
			<div class="providerAddBtn" style="padding: 0 0px;margin: 0 0px;">
				<c:if test="${userInfor.isPass == 0 }">
					<a style="height: 35px; width: 110px;text-align: center;line-height: 35px;border: 0px;box-shadow: 0px;padding: 0 0px;margin: 0px 80px 0px 40px" class="userpass" href="${pageContext.request.contextPath}/server/userpass?userId=${userInfor.userId}&isPass=1">审核</a>
				</c:if>
				<c:if test="${userInfor.isPass == 1}">
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
	
	// 单击 back 按钮，返回到 userlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/server/userlist";
	});
});
</script>



