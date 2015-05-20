<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<style>
	.fukrm p{margin-left: 84px;}
	.fukrm cite>span{white-space: nowrap;}
	.fukrm_item i{position: absolute;}
	.fukrm_item i.form-note-success{display: inline-block;}
	.fukrm_item i.form-note-warn{display: inline-block; }
	.fukrm_item i.form-note-error{display: inline-block; }

</style>
<div class="content">

	
	<h3><strong>修改密码</strong></h3>
	<form action="/SystemPwd.shtml" method="post" class="fukrm fukrm-ajax">
		<input type="hidden" name="phone">
		<cite><span>手机号码：</span><input type="text" name="mobile" check="required,phone" placeholder="请输入手机号码">
			<p>请输入您注册时填入的有效手机号</p>
		</cite>
		
		
		<cite><span>短信验证码：</span><input type="text" name="code" check="required" style="width:136px" placeholder="请输入短信验证码" class="checkcode">
			<b class="getcode" for="mobile" url="/code.html">获取验证码 ></b>
		</cite><br>

		
		<cite><span>账户密码：</span><input type="password" name="NewPassword" placeholder="请输入账户密码" check="required"  class="checkstrong fukrm_save">
			<p style="width:400px;padding-top:5px;">
				密码强度: <span class="checkstrong_res">
				<b >弱</b><b>中</b><b>强</b></span><br>
				<img src="/images/icon_warm.png" style="vertical-align: -2px;width:14px;" >为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
			</p>
		</cite><br>

		<cite><span>确认密码：</span><input type="password" name=""  placeholder="请重新输入账户密码" check="required,repassword"  class="fukrm_save">
			<p>再次输入您的账户密码以确认您记住了您的密码</p>
		</cite><br>

		<br>
		<cite><span></span><input type="submit" value="提交"></cite>
		<br><br>
	</form>

</div>



<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" ></jsp:include>