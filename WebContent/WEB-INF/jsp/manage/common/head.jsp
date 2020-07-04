<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	
<!DOCTYPE html>
<html>
<head lang="en">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>医药产品管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style1.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/public.css" />
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>医药产品管理系统</h1>
        <div class="publicHeaderR">
            <p><span>下午好！</span><span style="color: #fff21b"> ${loginer.userAlice }</span> , 欢迎你！</p>
            <a href="${pageContext.request.contextPath}/login_out">退出</a>
        </div>
    </header>
<!--时间-->
    <section class="publicTime">
        <span id="time">2015年1月1日 11:11  星期一</span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </section>
 <!--主体内容-->
 <section class="publicMian ">
     <div class="left">
         <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
         <nav>
             <ul class="list">
              <li><a href="${pageContext.request.contextPath}/serverXF/orderlist">订单管理</a></li>
              <li><a href="${pageContext.request.contextPath}/server/goodslist">商品管理</a></li>
              <li><a href="${pageContext.request.contextPath}/server/categorylist">分类管理</a></li>
              <li><a href="${pageContext.request.contextPath}/server/userlist">用户管理</a></li>
              <li><a href="${pageContext.request.contextPath}/serverXF/commentlist">评论管理</a></li>
              <li><a href="${pageContext.request.contextPath}/server/about_us">关于我们</a></li>
              <li><a href="${pageContext.request.contextPath}/serverXF/pwdmodify">密码修改</a></li>
              <li><a href="${pageContext.request.contextPath}/login_out">退出系统</a></li>
             </ul>
         </nav>
     </div>
     <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
     <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>