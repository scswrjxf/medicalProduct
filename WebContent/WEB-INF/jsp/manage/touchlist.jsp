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
				<a href="${pageContext.request.contextPath}/server/goodsadd">添加商品</a>
			</form>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">商品名称</th>
                <th width="20%">商品图片</th>
                <th width="10%">商品价格</th>
                <th width="10%">商品描述</th>
                <th width="10%">商品数量</th>
                <th width="10%">上架时间</th>
                <th width="10%">商品分类</th>
                <th width="30%">操作</th>
            </tr>
            <c:forEach var="goods" items="${goodsList }" varStatus="status">
				<tr>
					<td>
					<span>${goods.goodsName }</span>
					</td>
					<td>
					<span><img style="height:100px;width: 100px; " alt="商品图片" src="${pageContext.request.contextPath}/statics/file/${goods.goodsPhoto}"> </span>
					</td>
					<td>
					<span>${goods.goodsPrice}</span>
					</td>
					<td>
					<span>${goods.goodsDesc}</span>
					</td>
					<td>
					<span>${goods.goodsNumber}</span>
					</td>
					<td>
					<span>
					<fmt:formatDate value="${goods.inputDate}" pattern="yyyy-MM-dd"/>
					</span>
					</td>
					<td>
					<span>${goods.categoryId.category}</span>
					</td>
					<td>
					<span><a class="modifyProvider" href="${pageContext.request.contextPath}/server/goodsmodify/${goods.gid }"><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteGoods" href="javascript:;" gid=${goods.gid } goodsName=${goods.goodsName }><img src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
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













