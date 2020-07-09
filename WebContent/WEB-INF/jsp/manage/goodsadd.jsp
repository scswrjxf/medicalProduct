<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>

<div class="right">
	<div class="location" style="margin-bottom: 20px; margin-top: 10px;">
		<strong style="color: black; font-size: 16px;">你现在所在的位置是:</strong> 
		<span style="color: black;"> 商品管理页面 >> 商品添加页面</span>
	</div>
	<div class="providerAdd">
		<form id="goodsForm" name="goodsForm" method="post"
			action="${pageContext.request.contextPath}/server/goodsnewadd"
			enctype="multipart/form-data">
			<!--div的class 为error是验证错误，ok是验证成功-->
			<div class="error">${error }</div>
			<div>
				<label for="goodsName">商品名称：</label> <input type="text"
					name="goodsName" id="goodsName" value="">
				<!-- 放置提示信息 -->
				<font color="red"></font>
			</div>
			<div>
				<label for="goodsPrice">商品价格：</label> <input type="text"
					name="goodsPrice" id="goodsPrice" value=""> <font
					color="red"></font>
			</div>
			<div>

				<label for="goodsDesc">商品描述：</label>
				<textarea name="goodsDesc" id="goodsDesc" rows="10" cols="39"></textarea>
				<font color="red"></font>

			</div>
			<div>
				<label for="goodsNumber">商品数量：</label> <input type="text"
					type="text" name="goodsNumber" id="goodsNumber" value=""> <font
					color="red"></font>
			</div>
			<div>
				<label>商品分类：</label>
				<!-- 列出所有的商品分类 -->
				<select name="categoryId.categoryId" id="categoryId">
					<c:forEach items="${category }" var="categoryList">
						<c:choose>
							<c:when test='${categoryList.category == "外用"}'>
								<option value="${categoryList.categoryId}" selected="selected">外用</option>
							</c:when>
							<c:otherwise>
								<option value="${categoryList.categoryId}">${categoryList.category}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> <font color="red"></font>
			</div>
			<div>
				<label for="goodsPhoto">商品图片：</label> <input type="file"
					name="a_goodsPhoto" id="goodsPhoto" /> <font color="red"></font>
			</div>
			<div class="providerAddBtn">
				<input type="button" name="save" id="save" value="保存"> <input
					type="button" id="back" name="back" value="返回">
			</div>
		</form>
	</div>
</div>
</section>
<%@include file="common/foot.jsp"%>


<script>
	$(function() {
		// 验证商品名称唯一性
		// 为 id 为 goodsName 的输入框添加 blur 事件，发送 ajax 请求到控制器
		$("#goodsName").blur(function() {
			// 获取 goodsName 的值
			var goodsNameVal = $(this).val();
			// 发送异步请求，把获取的值传递到控制器
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/server/ucexist",
				data : "goodsName=" + goodsNameVal,
				success : function(msg) {

					if (msg.goodsName == 'exist') {
						$("#goodsName").next().html("商品已经存在");
					} else {
						$("#goodsName").next().html("商品名可以使用");
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("异常：" + textStatus + errorThrown);
				}
			});
		});
		// 单击 save 按钮，提交表单
		$("#save").click(function() {
			// 使得表单提交
			$("form").trigger("submit");
		});

		// 单击 back 按钮，返回到 userlist
		$("#back").click(function() {
			// 使用了 JavaScirpt 页面跳转方式
			location.href = "${pageContext.request.contextPath}/server/goodslist";
		});
	});
</script>

