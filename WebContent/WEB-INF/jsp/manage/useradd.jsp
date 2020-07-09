<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="userForm" name="userForm" method="post" 
            	action="${pageContext.request.contextPath}/user/useradd" enctype="multipart/form-data">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="error">${error }</div>
                <div>
                    <label for="userCode">用户编码：</label>
                    <input type="text" name="userCode" id="userCode" value=""> 
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="userPassword">用户密码：</label>
                    <input type="password" name="userPassword" id="userPassword" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="ruserPassword">确认密码：</label>
                    <input type="password" name="ruserPassword" id="ruserPassword" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label >用户性别：</label>
					<select name="gender" id="gender">
					    <option value="1" selected="selected">男</option>
					    <option value="2">女</option>
					 </select>
                </div>
                <div>
                    <label for="birthday">出生日期：</label>
                    <input type="text" Class="Wdate" id="birthday" name="birthday" 
					readonly="readonly" onclick="WdatePicker();">
					<font color="red"></font>
                </div>
                <div>
                    <label for="phone">用户电话：</label>
                    <input type="text" name="phone" id="phone" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="address">用户地址：</label>
                   <input name="address" id="address"  value="">
                </div>
                <div>
                    <label >用户角色：</label>
                    <!-- 列出所有的角色分类 -->
					<select name="userRole.id" id="userRole">
						<c:forEach items="${roleList }" var="role">
							<c:choose>
								<c:when test='${role.roleName == "普通员工"}'>
			    					<option value="${role.id}" selected="selected">普通员工</option>
			    				</c:when>
								<c:otherwise><option value="${role.id}">${role.roleName}</option></c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
	        		<font color="red"></font>
                </div>
                <div>
                    <label for="idPicPath">证件照：</label>
                   	<input type="file" name="a_idPicPath" id="idPicPath"/>
                    <font color="red"></font>
                </div>
               <div>
                    <label for="workPicPath">工作证照片：</label>
                   	<input type="file" name="a_workPicPath" id="workPicPath"/>
                    <font color="red"></font>
                </div>
                <div class="providerAddBtn">
                    <input type="button" name="save" id="save" value="保存" >
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </form>
        </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/manage/common/foot.jsp" %>
<script>
$(function(){
	// 验证用户编码唯一性
	// 为 id 为 userCode 的输入框添加 blur 事件，发送 ajax 请求到控制器
	$("#userCode").blur(function(){
		// 获取 userCode 的值
		var userCodeVal = $(this).val();
		// 发送异步请求，把获取的值传递到控制器
		$.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/user/ucexist",
			   data: "userCode="+userCodeVal,
			   success:function(data){
				   if(data.userCode == "exist"){
					   $("#userCode").next().html("用户已经存在");
					   // 获取焦点，重新输入
					   $("#userCode").focus();
				   }
				   else{
					   $("#userCode").next().html("可以使用此用户");
				   }
			   },
			   error:function (XMLHttpRequest, textStatus, errorThrown) {
				    alert("异常："+textStatus+errorThrown);
			   }
		});
	});
	
	// 单击 save 按钮，提交表单
	$("#save").click(function(){
		// 使得表单提交
		$("form").trigger("submit");
	});
	
	// 单击 back 按钮，返回到 userlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/user/userlist";
	});
});
</script>
