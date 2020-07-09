<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style type="text/css">
</style>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
    <div class="right">
        <div class="location" style="margin-bottom: 20px;margin-top: 10px;">
            <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
            <span style="color: black;">用户管理页面 >> 用户审核页面</span>
        </div>
        <div class="providerView">
            <p><strong>发件人名字：</strong><span>${touch.name }</span></p>
            <p><strong style="position: absolute; ">邮件内容：</strong><textarea style="margin: 10px 0px 0px 200px;" rows="10" cols="40" readonly="readonly"> ${touch.message }</textarea> </p> 
            <p><strong>发件人地址：</strong><span>${touch.address }</span></p>
            <p><strong>发件人邮箱：</strong><span>${touch.email }</span></p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
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
		location.href="${pageContext.request.contextPath}/server/touchlist";
	});
});
</script>



