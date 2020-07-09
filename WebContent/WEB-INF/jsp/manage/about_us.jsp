<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div class="right">
	<div class="location" style="margin-bottom: 20px; margin-top: 10px;">
		<strong style="color: black; font-size: 16px;">你现在所在的位置是:</strong> <span
			style="color: black;">关于我们管理页面</span>
	</div>
	<div class="providerAdd">
		<c:forEach items="${about}" var="about">
			<form id="aboutForm" name="aboutForm" method="post"
				action="${pageContext.request.contextPath}/server/about">
				<input name="aid" type="hidden" id="aid" value="${about.aid }" />
				<div class="">
					<label for="aboutTitle">标题：</label> <input type="text"
						name="aboutTitle" id="aboutTitle" value="${about.aboutTitle}">
					<font color="red"></font>
				</div>
				<div class="">
					<label for="aboutDesc">关于我们信息：</label>
					<textarea name="aboutDesc" id="aboutDesc" rows="10" cols="40">${about.aboutDesc}</textarea>
					<font color="red"></font>
				</div>
				<div class="providerAddBtn">
					<!--<a href="#">保存</a>-->
					<input type="button" name="save" id="save" value="保存"
						class="input-button">
				</div>
			</form>
		</c:forEach>
	</div>
</div>
</section>
<%@include file="common/foot.jsp"%>
<script>
	$(function() {
		// 当前id为save被点击的时候，触发 form 标签的提交事件
		$("#save").click(function() {
			// 使得表单提交
			$("form").trigger("submit");
		});

	});
</script>
