<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>

<div class="right">
	<div class="location" style="margin-bottom: 20px;margin-top: 10px;">
         <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
         <span style="color: black;">分类管理页面 >> 添加分类页面</span>
	</div>
	<div class="providerAdd">
	 	<div class="nNote nInformation hideit">
            <p style="color: red;">${error }</p>
        </div>
     
		<form id="providerForm" modelAttribute="category"  method="post"
			action="${pageContext.request.contextPath}/server/add_category">
			<div class="">
				<label for="category">分类名称：</label> 
				<input type="text" name="category" id="category">
				<form:errors path="category" cssStyle="color:red;"/>
			</div>
			<div class="providerAddBtn">
				<input type="submit" name="save" id="save" value="添加"> 
				<inputtype="button" id="back" name="back" value="返回">
			</div>
		</form>
	</div>
</div>
</section>
<%@include file="common/foot.jsp"%>
<script>
	$(function() {
		// 单击 back 按钮，返回到 userlist
		$("#back").click(
			function() {
				// 使用了 JavaScirpt 页面跳转方式
				location.href = "${pageContext.request.contextPath}/server/categorylist";
			});
		// 单击 save 按钮，提交表单
		$("#save").click(function() {
			// 使得表单提交
			$("form").trigger("submit");
		});
	});
</script>


