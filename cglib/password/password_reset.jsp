<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>


<!-- 头部 -->
<jsp:include page="/cglib/header_unlogin.jsp" flush="true"/>
<link rel="stylesheet" href="/css/login.css">


<div class="bu">
  <ul>
    <li><a href="#">银联POS</a></li>
    <li><a href="#">支付网关</a></li>
    <li><a href="#">跨境结算</a></li>
    <li><a href="#">会员卡系统</a></li>
    <li><a href="#">充值缴费</a></li>
    <li><a href="#">移动收款</a></li>
    <li><a href="#">代收代付</a></li>
</ul> 
</div>
<br><br>
<div class="log18"><div class="log19 s16 b"><a href="#" class="s16 black">首页</a> &gt; 找回密码</div></div>





<div class="log20">
	<div class="log28">
		<div class="log29"><center><img src="/images/pic4.gif"></center></div>
		<div class="log30_1 b s16">
			<div class="left" style="padding:0 20px 0 200px;">已向<span class="orange b s16">150&nbsp;1246&nbsp;0225</span>发送验证码</div>

			</div>
			<form id="pwdRetackSetupForm" name="pwdRetackSetupForm" method="post" action="#">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody><tr>
						<td width="19%" height="45" align="right" class="s14"><span class="red">*</span> 新密码：</td>
						<td width="32%" style="padding-left:7px;"><input name="newPwd1" type="password" class="seach3" id="newPwd1" value="" size="29"></td>
						<td width="49%">
							<div>
								<img id="errImg" src="/images/error.gif" style="vertical-align:middle; margin-right:6px;
								display: none;">
								<span class="red" id="errMsg">
								</span>

							</div>
						</td>
					</tr>
					<tr>
						<td width="19%" height="45" align="right" class="s14"><span class="red">*</span> 确认密码：</td>
						<td width="32%" style="padding-left:7px;"><input name="newPwd2" type="password" class="seach3" id="newPwd2" value="" size="29"></td>
						<td width="49%"></td>
					</tr>

					<tr>
						<td width="19%" height="45" align="right" class="s14"><span class="red">*</span> 短信验证码：</td>
						<td width="32%" style="padding-left:7px;"><input name="verifycode" type="text" id="verifycode" value="" size="8" class="seach3" maxlength="6"></td>
						<td width="49%"></td>
					</tr>

					<tr>
						<td height="50" align="right" class="s14">&nbsp;</td>
						<td colspan="2" style="padding-left:7px;"><div class="btn"><a href="###">确定</a></div></td>
					</tr>
					<tr>
						<td colspan="3" style="line-height:20px;">
							<input type="hidden" name="account" value="15012460225">
							<input type="hidden" name="type" value="03">
							<input type="hidden" name="code" value="">






							<input type="hidden" name="refNo" value="0000000002350345">
						</td>
					</tr>
				</tbody></table>
			</form>
		</div>
		<div class="log31">
			<div class="log32">
				<span class="b s14">没有收到短信？</span><br>
				确认短信是否被你的手机系<br>
				统自动拦截，或被误认为垃<br>
				圾短信<br>
			</div>
			<div class="log34">
				<br>
				如果超过十分钟你仍然未收<br>
				到短信，请您：<br>
				<a href="#" class="blue">重发一次 &gt;&gt;</a><br>
			</div>
		</div>
	</div>





<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>


