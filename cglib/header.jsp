<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<% 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
	request.setAttribute("basePath",basePath);
	response.setHeader("Cache-Control","no-cache"); 
	response.setHeader("Pragma","no-cache"); 
	response.setDateHeader ("Expires", -1);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="-1">
	<title>安子预付卡</title>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

	<c:set var="login" value="${param.loaded}" scope="request" />
	<base href="${basePath}">
	<link rel="stylesheet" href="/css/global.css">
	<c:if test="${param.loaded eq 'false'}"><link rel="stylesheet" href="/css/index.css"></c:if>
	<c:if test="${param.loaded eq 'true'}"><link rel="stylesheet" href="/css/user.css"></c:if>
	

	<!--[if lt IE 8]><script src="js/ie67.js"></script><![endif]-->
	<script> 
		// 全局变量
		var GLOBAL = {};
		<c:if test="${sessionScope.userid eq null}">GLOBAL.loaded =  false;</c:if>
		<c:if test="${sessionScope.userid > 0}">GLOBAL.loaded =  true;</c:if>
	</script>

</head>
<body>
	
<c:if test="${param.loaded eq 'true'}"><jsp:include page="/cglib/validation.jsp"/></c:if>
<div class="header">
        
    <div class="topbar">
        <!-- 已登录 -->
		<ul class="topbar_login">
			<c:if test="${param.loaded eq 'true'}">
			<li>你好，${user.username} |&nbsp;</li>
            <li><a href="/exit.shtml">退出</a></li>
			</c:if>

            <c:if test="${param.loaded eq 'false'}">
			<li>预付卡迎您！！|&nbsp;</li>
			<li><a href="index.shtml" class="head_login">请登录</a></li>
			</c:if>
		
		</ul>

        <ul class="topbar_links">
            <li><a href="http://www.anzimall.com/" target="_blank">积分商城</a></li>
			<li><a href="http://union.anzimall.com" target="_blank">异业联盟</a></li>
			<li><a href="http://anzipay.com/" target="_blank">安子支付</a></li>
			<li><a href="http://www.anziapp.com/" target="_blank">安子助手</a></li>
			<li><a href="http://119.254.69.98:8090/agentmgr/" target="_blank">分销平台</a></li>
        </ul>
    </div>

    <div class="nav">
        <div class="nav_logo">
        	<c:if test="${param.loaded eq 'false'}"><h1><a href="/index.shtml"><img src="/images/logo-youhui-gray.png"></a></h1></c:if>
        	<c:if test="${param.loaded eq 'true'}"><h1><a href="/user_index.shtml"><img src="/images/logo-youhui-gray.png"></a></h1></c:if>
        </div>
        <ul class="nav_links">
        	<c:if test="${param.loaded eq 'false'}"><li class="active"><a href="/index.shtml" class="nav_home">预付卡首页</a></li></c:if>
			<c:if test="${param.loaded eq 'true'}"><li><a href="/user_index.shtml" class="nav_home">预付卡首页</a></li></c:if>

			<c:if test="${param.loaded eq 'false'}">
				<li><a class="nav_apply" href="/apply.shtml">合作加盟</a></li>
			</c:if>
			<li><a class="nav_about" href="http://www.anzipay.com/index.php?m=content&c=index&a=lists&catid=7" target="_blank">关于我们</a></li>
        </ul>
                   
    </div>
</div>




<c:if test="${param.loaded eq 'true'}">
	<jsp:include page="/cglib/user/banner.jsp"/>

	<div class="main">
		<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>
	
</c:if>


	<!--头部 -->
<!-- 	<div class="head_nav">
		<div class="center">
			<c:if test="${login eq 'false'}"><a href="/index.shtml" class="head_nav_logo"><img src="/images/logo.png" alt="安淘惠" style="margin-top:7px;"></a></c:if>
			<c:if test="${login eq 'true'}"><a href="/user_index.shtml" class="head_nav_logo"><img src="/images/logo.png" alt="安淘惠" style="margin-top:7px;"></a></c:if>
			<ul>
				<c:if test="${login eq 'false'}"><li class="active"><a href="/index.shtml">预付卡首页</a></li></c:if>
				<c:if test="${login eq 'true'}"><li class="active"><a href="/user_index.shtml">预付卡首页</a></li></c:if>
				<li><a href="apply.shtml">合作加盟</a></li>
				<li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=lists&catid=7">关于我们</a></li>
				
			</ul>
		</div>
	</div> -->


	
	