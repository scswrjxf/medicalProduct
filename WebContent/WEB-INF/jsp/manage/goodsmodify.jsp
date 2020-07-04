<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="common/head.jsp"%>

<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> 
		<span>商品管理页面 >> 商品修改页</span>
	</div> 
	<div class="providerAdd">
		<div class="wrapper">
    	<!-- Note -->
        <div class="nNote nInformation hideit">
            <p>${error }</p>
        </div>
    	<div class="widget" style="height: 100px;">
            <div style="position: absolute;left: 360px;top: 150px;">商品图片:</div>
  				<img id="uPhoto" style="position: absolute;left: 430px;width:100px;height:100px; top: 163px;" src="${pageContext.request.contextPath}/statics/file/${goods.goodsPhoto}" alt="" />
   			<label class="providerAddBtn">
     			<input type="file" id="photo" name="photo" onchange="upload();" style="left:-999px;position:absolute;">
     			<span style="position: absolute;left: 560px;top:235px; background-color:#4ca0cc;color: white;height: 25px;width: 80px;border-radius: 5%;line-height: 25px;text-align: center;">
     				上传新图片
     			</span>
			</label>
       	</div>
	</div>
	</div>
	<div class="providerAdd">
		<form id="userForm" name="userForm" method="post"
			action="${pageContext.request.contextPath}/server/goodsmodify">
			<!-- 增加隐藏字段，存储gid -->
			<input name="gid" type="hidden" id="gid" value="${goods.gid }" />
			<div class="">
				<label for="goodsName">商品名称：</label> 
				<input type="text" name="goodsName" id="goodsName" value="${goods.goodsName }">
				<font color="red"></font>
			</div>
			<div>
				<label for="goodsPrice">商品价格：</label> 
				<input type="text" name="goodsPrice" id="goodsPrice" value="${goods.goodsPrice }"> 
				<fontcolor="red"></font>
			</div>

			<div>
				<label for="goodsDesc">商品描述：</label> 
				<input type="text" name="goodsDesc" id="goodsDesc" value="${goods.goodsDesc }">
				<font color="red"></font>
			</div>

			<div>
				<label for="goodsNumber">商品数量：</label> 
				<input type="text" name="goodsNumber" id="goodsNumber" value="${goods.goodsNumber }">
				<font color="red"></font>
			</div>
			
			<div>
           		<label style="margin: 0px 10px 0px 0px">商品分类:</label>
         		<select name="categoryId.categoryId" style="width: 273px;">
         		
                   <c:forEach items="${category }" var="categorylist">
                   		<c:choose>
							<c:when test="${categorylist.category == goods.categoryId.category }">
									<option value="${categorylist.categoryId}" selected="selected">${categorylist.category }</option>
								</c:when>
							<c:otherwise>
								<option value="${categorylist.categoryId}">${categorylist.category }</option>
							</c:otherwise>
						</c:choose>
                   	</c:forEach>
                </select>
            </div>
			<div class="providerAddBtn">
				<input type="button" name="save" id="save" value="保存"> 
				<input type="button" id="back" name="back" value="返回">
			</div>
		</form>
	</div>
</div>
</section>
<%@include file="common/foot.jsp"%>
<script>
	$(function() {
		// 单击 back 按钮，返回到 goodslist
		$("#back").click(
			function() {
				// 使用了 JavaScirpt 页面跳转方式
				location.href = "${pageContext.request.contextPath}/server/goodslist";
			});
		// 单击 save 按钮，提交表单
		$("#save").click(function() {
			// 使得表单提交
			$("form").trigger("submit");
		});
	});
function upload(){
	var formData = new FormData();
	formData.append("photo",$("#photo")[0].files[0]);
	formData.append("gid",$("#gid").val());
	$.ajax({
		url:'${pageContext.request.contextPath}/server/upload',
		type:'post',
		data: formData,
		contentType: false,
		processData: false,
		success:function(result){
			if(result['status'] == 'success'){
				$("#uPhoto").attr("src","${pageContext.request.contextPath}/statics/file/"+result['filename']);
			}
			else{
				alert(result['status']);
			}
		},
		error: function(XMLHttpRequest,textStatus,errorThrown) {
		    alert(errorThrown);
		}
	});
}
</script>


