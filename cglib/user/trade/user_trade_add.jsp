<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<style>
	.fukrm cite>span{white-space: nowrap;}
	.fukrm_item i{position: absolute;}
	.fukrm_item i.form-note-success{display: inline-block;}
	.fukrm_item i.form-note-warn{display: inline-block; }
	.fukrm_item i.form-note-error{display: inline-block; }
</style>

<div class="content">
	<h3>添加商户</h3>

	<form action="/saveMerchant.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">

		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" ></cite><br>
		<cite><span>通讯地址：</span><input type="text" name="address"></cite><br>
	
	
	    <cite><span>商户名称：</span><input type="text" name="name" check="required"></cite><br>
		<cite><span>商户简称：</span><input type="text" name="abbreviation"></cite><br>
		
		
		<cite><span>渠道类型：</span><input type="text" name="trenchtype"></cite><br>
		<cite><span>行业类型：</span><input type="text" name="businesstype"></cite><br>
		
		
		<cite><span>法人代表：</span><input type="text" name="corporationname" check=""></cite><br>
		<cite><span>法人身份证：</span><input type="text" name="idcard" check=""></cite><br>
		
		
		<cite><span>登录手机号：</span><input type="text" name="mobile" check="required,phone"></cite><br>
		<cite><span>密码：</span><input type="password" name="password" placeholder="请输入密码" check="required"  class="checkstrong fukrm_save">
			<p style="margin-left: 84px;margin-top: 5px;">
				密码强度: <span class="checkstrong_res">
				<b >弱</b><b>中</b><b>强</b></span><br>
				<img src="/images/icon_warm.png" style="vertical-align: -2px;width:14px;" >为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
			</p>
		</cite><br>
		
		
		<cite><span>用户姓名：</span><input type="text" name="Name"  check="required"></cite><br>
		<cite><span>邮政编码：</span><input type="text" name="zipcode"></cite><br>	
	
			
		
		<cite><span>电子邮件：</span><input type="text" name="email"></cite><br>

		<br>
		<cite><span></span><input type="submit" value="添加" style=""></cite>
		
	
	</form>
		
</div>




<jsp:include page="/cglib/foot.jsp" flush="true"/>