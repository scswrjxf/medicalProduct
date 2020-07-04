<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>密码修改页面</span>
            </div>
            <div class="providerAdd">
                <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath}/serverXF/pwdmodify">
                    <input type="hidden" name="method" value="savepwd">
                    <!--div的class 为error是验证错误，ok是验证成功-->
                    <div class="info">${information}</div>
                    <div class="">
                        <label for="oldPassword">旧密码：</label>
                        <input type="password" name="oldpassword" id="oldpassword" value=""> 
						<font color="red"></font>
                    </div>
                    <div>
                        <label for="newPassword">新密码：</label>
                        <input type="password" name="newPassword" id="newpassword" value=""> 
						<font color="red"></font>
                    </div>
                    <div>
                        <label for="reNewPassword">确认新密码：</label>
                        <input type="password" name="reNewPassword" id="rnewpassword" value=""> 
						<font color="red"></font>
                    </div>
                    <div class="providerAddBtn">
                        <!--<a href="#">保存</a>-->
                        <input type="button" name="save" id="save" value="保存" class="input-button">
                    	<input type="button" id="back" name="back" value="返回"/>
                    </div>
                </form>
            </div>
        </div>
    </section>
<%@include file="common/foot.jsp" %>
<script>
$(function(){
	// 验证旧密码是否正确
	// 为 id 为 oldpassword 的输入框添加 blur 事件，发送 ajax 请求到控制器
	$("#oldpassword").blur(function(){
		// 获取 oldPassword 的值
		var oldPassword = $(this).val();
		// 发送异步请求，把获取的值传递到控制器
		$.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/serverXF/pwdconform",
			   data: "oldPassword="+oldPassword,
			   success:function(data){
				   if(data.infor != "success"){
					   $("#oldpassword").next().html(data.infor).end().focus();
				   }
				   else{
					   $("#oldpassword").next().html("");
				   }
			   },
			   error:function (XMLHttpRequest, textStatus, errorThrown) {
				    alert("异常："+textStatus+errorThrown);
			   }
		});
	});
	
	// 当前id为save被点击的时候，触发 form 标签的提交事件
	$("#save").click(function(){
		// 使得表单提交
		$("form").trigger("submit");
	});
	
	// 单击 back 按钮，返回到 userlist
	$("#back").click(function(){
		// 使用了 JavaScirpt 页面跳转方式
		location.href="${pageContext.request.contextPath}/server/userlist";
	});
});
</script>
