<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>联系我们管理页面</span>
        </div>
        <div class="search">
        	<form method="get" action="">
				<input name="method" value="query" type="hidden">
				<span>供应商编码：</span>
				<input name="queryProCode" type="text" value="">
				
				<span>供应商名称：</span>
				<input name="queryProName" type="text" value="">
				
				<input value="查 询" type="submit" id="searchbutton">
			</form>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">发件人</th>
                <th width="20%">邮件内容</th>
                <th width="10%">发件人邮箱</th>
                <th width="10%">状态</th>
                <th width="30%">操作</th>
            </tr>
            <c:forEach var="touch" items="${touch }" varStatus="status">
				<tr>
					<td>
					<input hidden="">
					<span>${touch.name}</span>
					</td>
					<td>
					<span>${touch.message}</span>
					</td>
					<td>
						<c:if test="${touch.touchIspass==0 }">
							<span style="color: red;">未查看</span>
						</c:if>	
						<c:if test="${touch.touchIspass==1 }">
							<span>已查看</span>
						</c:if>
					</td>
					<td>
					<span>${touch.email}</span>
					</td>
					<td>
					<span><a class="viewTouch" href="${pageContext.request.contextPath}/server/touchview/${touch.tid}"><img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
					</td>
				</tr>
			</c:forEach>
        </table>

    </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该商品吗？</p>
           <a href="" id="yes">确定</a>
           <a href="javascript:cancleBtn();" id="no">取消</a>
       </div>
   </div>
</div>

<%@include file="common/foot.jsp" %>
<script>
function openYesOrNoDLG(){
	$('.zhezhao').css('display', 'block');
	$('#removeProv').fadeIn();
}
function cancleBtn(){
	$('.zhezhao').css('display', 'none');
	$('#removeProv').fadeOut();
}
function changeDLGContent(contentStr,gid){
	var p = $(".removeMain").find("p");
	p.html(contentStr);
	// 把id为yes的a标签的href属性值，进行设置
	var a = $("#yes");
	a.attr("href","${pageContext.request.contextPath}/server/delgoods/"+gid);
}

$(function(){
	// 点击删除按钮弹出
	$("body").on("click",".deleteGoods",function(){
		goodsObj = $(this);
		changeDLGContent(
				"你确定要删除商品【"+goodsObj.attr("goodsName")+"】吗？",
				goodsObj.attr("gid"));
		openYesOrNoDLG();
	});
});
</script>













