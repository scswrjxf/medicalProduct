<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>

<div class="right">
         <div class="location" style="margin-bottom: 20px;margin-top: 10px;">
	         <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
	         <span style="color: black;"> 商品管理页面</span>
        </div>
        <div class="search" style="margin-bottom: 20px;">
        	<form method="post" action="">
				<input name="method" class="input-text" value="query" type="hidden">
				<span>商品名称：</span>
				<input name="queryname" class="input-text" type="text" value="">
				
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
					<span><a class="modifyGoods" href="${pageContext.request.contextPath}/server/goodsmodify/${goods.gid }"><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
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
$(function(){
	// 当前点击查询按钮的时候(当前表单提交的时候)
	$("form").submit(function(){
		// 获取查询输入框中的内容
		var queryname = $("input[name='queryname']").val();
		// 发送异步请求，把获取的值传递到控制器
		$.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/server/goodsbyname",
			   data: "goodsName="+queryname,
			   success:function(data){
				   /*
				   // 把 JSON 字符串转换为 JSON 对象
				   data = JSON.parse(data);
				   */
				   // 删除表格中所有内容，并且增加标题行内容
				   $("table").empty().append('<tr class="firstTr"><th width="10%">商品名称</th>'
						   +'<th width="20%">商品图片</th><th width="10%">商品价格</th>'
						   +'<th width="10%">商品描述</th><th width="10%">商品数量</th>'
						   +'<th width="10%">上架时间</th><th width="10%">商品分类</th>'
						   +'<th width="30%">操作</th></tr>');
				   for(var i in data){
						var str = '<tr>'
						   +'<td>'+data[i].goodsName+'</td>'
						   +'<td><img alt="商品图片" style="height:100px;width: 100px; " src="${pageContext.request.contextPath}/statics/file/'+data[i].goodsPhoto+'"/></td>'
						   +'<td>'+data[i].goodsPrice+'</td>'
						   +'<td>'+data[i].goodsDesc+'</td>'
						   +'<td>'+data[i].goodsNumber+'</td>'
						   +'<td>'+data[i].inputDate+'</td>'
						   +'<td>'+data[i].categoryId.category+'</td>'
						   +'<td>'
						   +'<span><a class="modifyGoods" href="/medical_product/server/goodsmodify/'+data[i].gid+'"><img src="/medical_product/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>'
						   +'<span><a class="deleteGoods" href="javascript:;" userid='+data[i].gid+' username='+data[i].goodsName+'><img src="/medical_product/statics/images/schu.png" alt="删除" title="删除"/></a></span>'
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
});	
</script>













