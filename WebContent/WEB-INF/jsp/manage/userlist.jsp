<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            <div class="search">
           		<form method="post" action="">
					<input name="method" value="query" class="input-text" type="hidden">
					 <span>用户名：</span>
					 <input name="queryname" class="input-text"	type="text" value="">
					 
					 <input	value="查 询" type="submit" id="searchbutton">
					 
				</form>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">用户ID</th>
                    <th width="10%">用户昵称</th>
                    <th width="5%">性别</th>
                    <th width="20%">用户头像</th>
                    <th width="20%">邮箱</th>
                    <th width="10%">用户角色</th>
                    <th width="10%">是否通过审核</th>
                    <th width="20%">操作</th>
                </tr>
                <c:forEach var="users" items="${userList }" varStatus="status">
					<tr>
						<td>
						<span>${users.userId }</span>
						</td>
						<td>
						<span>${users.userAlice }</span>
						</td>
						<td>
							<span>${users.userSex }</span>
						</td>
						<td>
						<span><img alt="头像" src="${pageContext.request.contextPath }/statics/images/${users.userPhoto }"></span>
						</td>
						<td>
							<span>	${users.userEmail }</span>
						</td>
						<td>
							<span>
								<c:if test="${users.role==0}">普通用户</c:if>
								<c:if test="${users.role==1}">系统管理员</c:if>
							</span>
							
						</td>
						<td>
							<span>
								<c:if test="${users.isPass==0}">未审核</c:if>
								<c:if test="${users.isPass==1}">已审核</c:if>
							</span>
						</td>
						<td>
						<span><a class="viewUser" href="${pageContext.request.contextPath }/server/userview/${users.userId }"><img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
						<span><a class="modifyUser" href="${pageContext.request.contextPath }/server/userverify/${users.userId }"><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="审核" title="审核"/></a></span>
						</td>
					</tr>
				</c:forEach>
			</table>
        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="javascript:cancleBtn();" id="no">取消</a>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/manage/common/foot.jsp" %>
<script>
function openYesOrNoDLG(){
	$('.zhezhao').css('display', 'block');
	$('#removeUse').fadeIn();
}
function cancleBtn(){
	$('.zhezhao').css('display', 'none');
	$('#removeUse').fadeOut();
}
function changeDLGContent(contentStr,id){
	var p = $(".removeMain").find("p");
	p.html(contentStr);
	// 把id为yes的a标签的href属性值，进行设置
	var a = $("#yes");
	a.attr("href","${pageContext.request.contextPath}/user/deluser/"+id);
}

$(function(){
	// 当前点击查询按钮的时候(当前表单提交的时候)
	$("form").submit(function(){
		// 获取查询输入框中的内容
		var queryname = $("input[name='queryname']").val();
		// 发送异步请求，把获取的值传递到控制器
		$.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/user/usersbyname2",
			   data: "userName="+queryname,
			   success:function(data){
				   /*
				   // 把 JSON 字符串转换为 JSON 对象
				   data = JSON.parse(data);
				   */
				   // 删除表格中所有内容，并且增加标题行内容
				   $("table").empty().append('<tr class="firstTr">'
		                    +'<th width="5%">用户ID</th>'
		                    +'<th width="10%">用户昵称</th>'
		                    +'<th width="5%">性别</th>'
		                    +'<th width="20%">用户头像</th>'
		                    +'<th width="20%">邮箱</th>'
		                    +'<th width="10%">用户角色</th>'
		                    +'<th width="10%">是否通过审核</th>'
		                    +'<th width="20%">操作</th></tr>');
				   for(var i in data){
					   <td>
						<span><img alt="头像" src="${pageContext.request.contextPath }/statics/images/${users.userPhoto }"></span>
						</td>
						var str = '<tr>'
						   +'<td>'+data[i].userId+'</td>'
						   +'<td>'+data[i].userAlice+'</td>'
						   +'<td>'+data[i].userSex+'</td>'
						   +'<td><img alt="头像" src="${pageContext.request.contextPath }/statics/images/'+data[i].userPhoto+'></td>'
						   +'<td>'+data[i].userEmail+'</td>';
						if(data[i].userRole == 0)
							str += '<td>普通用户</td>';
						else
							str += '<td>系统管理员</td>';
						if(data[i].isPass == 0)
							str += '<td>未审核</td>';
						else
							str += '<td>已审核</td>';
						str +='<td>'
						   +'<span><a class="viewUser" href="/SMBMS/server/userview/'+data[i].userId+'"><img src="/SMBMS/statics/images/read.png" alt="查看" title="查看"/></a></span>'
						   +'<span><a class="modifyUser" href="/SMBMS/server/userverify/'+data[i].userId+'"><img src="/SMBMS/statics/images/xiugai.png" alt="审核" title="审核"/></a></span>'
						   +'</td></tr>';
					   $("table").append(str);
				   }
			   },
			   error:function (XMLHttpRequest, textStatus, errorThrown) {
				    alert("异常："+textStatus+errorThrown);
			   }
		});
		// 禁止提交
		return false;
	});
	
	// 点击删除按钮弹出（这样，动态生成的元素，也会绑定事件）
	$("body").on("click",".deleteUser",function(){
		userObj = $(this);
		changeDLGContent(
				"你确定要删除用户【"+userObj.attr("username")+"】吗？",
				userObj.attr("userid"));
		openYesOrNoDLG();
	});
});
</script>

