<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<title>点点滴滴</title>

	<base href="${basePath}"/>
	<link rel="shortcut icon" href="/images/favicon1.ico" type="image/x-icon" />
	<link rel="stylesheet" href="/css/basic.css" />
    <link rel="stylesheet" href="/css/pro.css" />

</head>
<body>

	<div class="topbar">
		<div class="grid-990 topbar-wrap fn-clear">
			<p class="toplink"><a href="#" class="mobile" ><i class="icon-mobile"></i>安子预付卡</a></p>
			<ul class="topmenu">
				<li class="topmenu-item topmenu-item-first"><a href="#" >登录</a><b class="split">-</b><a href="#" >注册</a></li>
				<li class="topmenu-item topmenu-item-dropdown" id="J-topmenu-dropdown">
					<a href="#" >我的预付卡<i class="icon-dropdown"></i></a>
					<ul class="ui-list">
						<li class="ui-list-item"><a href="#" >充值</a></li>
						<li class="ui-list-item"><a href="#" >交易记录</a></li>
						<li class="ui-list-item"><a href="#" >转账</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
	</div>


	<header class="header" coor="header">
		<div class="grid-990 header-wrap fn-clear">
			
			<a href="#" id="logo-noflash" class="ui-logo-alipay fn-left fn-hide"><img src="/images/logo.png" alt=""></a>          
			<nav id="J-nav" role="navigation">

			<ul class="nav" coor="nav">
				<li class="nav-item" id="home"><a href="#" class="nav-item-link">首页</a></li>
				<li class="nav-item" id="personal">
				<a href="#" class="nav-item-link">个人服务</a>
				<div class="nav-item-sub sl-shadow">
					<table class="nav-item-table">
						<tbody>

							<tr><td class="last"><a href="#">手机充值</a></td></tr>
							<tr><td class="last"><a href="#">游戏充值</a></td></tr>
							<tr><td class="last"><a href="#">生活代缴</a></td></tr>
							<tr><td class="last"><a href="#">长途汽车票</a></td></tr>
							<tr><td class="last"><a href="#">票务预订</a></td></tr>
						</tbody>
					</table>
				</div>
				<div class="angle sl-angle"></div>
				</li>


				<li class="nav-item" id="payment">
				<a href="#" class="nav-item-link">付款方式</a>
				<div class="nav-item-sub sl-shadow">
					<table class="nav-item-table">
						
						<tbody>
							<tr><td class="last"><a href="#">快捷支付（含卡通）</a></td></tr>
							<tr><td class="last"><a href="#">境外合作伙伴</a></td></tr>
							<tr><td class="last"><a href="#">网上银行</a></td></tr>
							<tr><td class="last"><a href="#">其他机构</a></td></tr>
							<tr><td class="last"><a href="#">国际银行卡</a></td></tr>
							<tr><td class="last"><a href="#">我要合作</a></td></tr>
							<tr><td class="last"><a href="#">信用卡分期付款</a></td></tr>
							<tr><td class="last"><a href="#">找人代付</a></td></tr>
							<tr><td class="last"><a href="#">海外用户付款方式</a></td></tr>
						</tbody>
					</table>
				</div>
				<div class="angle sl-angle"></div>
				</li>
		

				<li class="nav-item" id="security">
				<a href="#"  class="nav-item-link">安全中心</a>
				<div class="nav-item-sub sl-shadow">
					<table class="nav-item-table">
						
						<tbody>
							
                            <tr><td class="last"><a href="#">公司公告</a></td></tr>
                            <tr><td class="last"><a href="#">公司新闻</a></td></tr>
                            <tr><td class="last"><a href="#">行业新闻</a></td></tr>
                        
						</tbody>
					</table>
				</div>
				<div class="angle sl-angle"></div>
				</li>
			         
				<li class="nav-item" id="business">
				<i class="icon-nav-split"></i>
				<a href="#"  class="nav-item-link">商家服务</a>
				<div class="nav-item-sub sl-shadow">
					<table class="nav-item-table">
						<tbody>
							<tr><td class="last"><a href="#">银联POS</a></td></tr>
							<tr><td class="last"><a href="#">支付网关</a></td></tr>
							<tr><td class="last"><a href="#">跨境结算</a></td></tr>
							<tr><td class="last"><a href="#">会员卡系统</a></td></tr>
							<tr><td class="last"><a href="#">充值缴费</a></td></tr>
							<tr><td class="last"><a href="#">移动收款</a></td></tr>
							<tr><td class="last"><a href="#">代收代付</a></td></tr>
						</tbody>
					</table>
				</div>
				<div class="angle sl-angle"></div>
				</li>
			</nav>
		</div>
	</header>