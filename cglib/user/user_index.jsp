<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<style>
	.content{border: none;box-shadow: none;padding: 0;width: 800px;}
	.life{ border:1px solid #ddd;box-shadow: 0 0 2px #ddd;}
</style>

	<div class="content">
		
		<div class="life">
			<h3>快捷导航</h3>
			<ul>
				<li><a href="/integral_recharge.shtml"><img src="/images/userindex_1.png" width="80" height="80"><p>积分充值</p></a></li>      
				<li><a href="/rechange.shtml"><img src="/images/userindex_2.png" width="80" height="80"><p>余额充值</p></a></li>
				<li><a href="/card_open.shtml"><img src="/images/userindex_3.png" width="80" height="80"><p>会员开卡</p></a></li>
				<li><a href="/card_query.shtml"><img src="/images/userindex_4.png" width="80" height="80"><p>会员卡管理</p></a></li>
				<li><a href="/batchrecharge_in.shtml"><img src="/images/userindex_5.png" width="80" height="80"><p>批量充值</p></a></li>
				<li><a href="/user_card.shtml"><img src="/images/userindex_6.png" width="80" height="80"><p>消费明细</p></a></li>
				<li><a href="/user_card.shtml"><img src="/images/userindex_7.png" width="80" height="80"><p>开卡明细</p></a></li>
			</ul>
		</div>
		

		<div class="mod3 mod-title">
			<span class="x1"><span class="x1a"></span></span>
			<div class="mod-content">
				<div class="hd"><div class="hd-info"><h3 class="title title-t2">用户信息</h3></div></div>
				<div class="bd">
					<div class="bd-info table table-t1">
						<table><tbody>
							<tr><td class="key">登陆账号：</td><td class="value">${user.username}</td><td class="action"></td></tr>
							<tr><td class="key">操作员：</td><td class="value">${user.username}</td><td class="action"></td></tr>
							<tr><td class="key">最后一次登录时间：</td><td class="value"><fmt:formatDate value="${user.logintime}"  pattern="yyyy-MM-dd HH:mm"/></td><td class="action"></td></tr>
							<tr><td class="key">证件类型：</td><td class="value">-</td><td class="action"></td></tr>
							<tr><td class="key">证件号码：</td><td class="value">-</td><td class="action"></td></tr>
						</tbody></table>
					</div>
				</div>				
			</div>
			<span class="x2"><span class="x2a"></span></span>
		</div>

		<div class="mod3 mod-title">
			<span class="x1"><span class="x1a"></span></span>
			<div class="mod-content">
				<div class="hd"><div class="hd-info"><h3 class="title title-t2">安全信息</h3></div></div>
				<div class="bd">
					<div class="bd-info table table-t1">
						<table><tbody>
							<tr class="first"><td class="key">登录密码：</td><td class="value">xxxxxxxxxxx</td><td class="action"><a href="/updatePwd.shtml" >修改登录密码</a></td></tr>
							<tr class="first"><td class="key">支付密码：</td><td class="value">xxxxxxxxxxx</td><td class="action"><a href="/updatepaypwd.shtml" >修改支付密码</a></td></tr>				
							<tr><td class="key">绑定邮箱：</td><td class="value">13***2@qq.com</td><td class="action"></td></tr>
							<tr><td class="key">手机：</td><td class="value">${phone}</td><td class="action"></td></tr>
						</tbody></table>
					</div>
				</div>				
			</div>
			<span class="x2"><span class="x2a"></span></span>
		</div>
  	</div>

	

<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script>$('.nav_links').find('li').eq(0).addClass('active');</script>
