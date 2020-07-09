<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
 <div class="right">
         <div class="location" style="margin-bottom: 20px;margin-top: 10px;">
             <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
             <span style="color: black;"> 商品管理页面 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>商品编码：</strong><span>${provider.proCode }</span></p>
            <p><strong>商品名称：</strong><span>${provider.proName }</span></p>
            <p><strong>商品图片：</strong><span><img src="${pageContext.request.contextPath }/statics/images/buy.png"></span></p>
            <p><strong>商品价格：</strong><span>${provider.proPhone }</span></p>
            <p><strong>上架时间：</strong><span>${provider.proFax }</span></p>
            <p><strong>商品描述：</strong><span>${provider.proDesc}</span></p>
            <p><strong>商品分类：</strong><span>${provider.proDesc}</span></p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
            </div>
        </div>
    </div>
</section>
<%@include file="common/foot.jsp" %>
<script>
$(function(){
	// 单击 back 按钮，返回到 userlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/user/providerlist";
	});
});
</script>
