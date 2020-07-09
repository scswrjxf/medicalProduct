<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/manage/common/head.jsp"%>
        <div class="right">
            <div class="location" style="margin-bottom: 20px;margin-top: 10px;">
	            <strong style="color: black;font-size: 16px;">你现在所在的位置是:</strong> 
	            <span style="color: black;">评论管理页面</span>
            </div> 
            <!--评论列表-->
            <table class="providerTable" cellpadding="0" cellspacing="0"> 
                <tr class="firstTr">
                    <th width="20%">评论人</th>
                    <th width="20%">评论商品名称</th> 
                    <th width="20%">是否审核</th>
                    <th width="20%">评论时间</th> 
                    <th width="20%">操作</th>
                </tr>
                <c:forEach var="comments" items="${commentList }" varStatus="status">
					<tr>
						<td>
							<span>${comments.uId.userId }</span>
						</td>  
						<td>
						<span>${comments.goodsName.goodsName }</span>
						</td>
						<td>
							<span>
								<c:if test="${comments.commentIspass==0}">未审核</c:if>
								<c:if test="${comments.commentIspass==1}">已审核</c:if> 
							</span>
						</td>  
						<td>
							<span><fmt:formatDate value="${comments.commentDate }" pattern="yyyy年MM月dd日 HH:mm:ss"/></span> 
						</td> 
						<td>
							<span><a class="viewUser" href="${pageContext.request.contextPath }/serverXF/commentview/${comments.commentId }">
							<img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
							<span><a class="modifyUser" href="${pageContext.request.contextPath }/serverXF/commentverify/${comments.commentId }">
							<img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="审核" title="审核"/></a></span> 
						</td>
					</tr>
				</c:forEach>
			</table>
        </div>
    </section> 
