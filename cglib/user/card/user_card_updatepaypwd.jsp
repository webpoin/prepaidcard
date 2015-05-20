<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>修改支付密码</h3>

	<form action="/user_card_updatepaypwd.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
			<cite><span>帐号：</span><input type="text" name="AcctId" check="required,number" placeholder="请输入账号"></cite>	<br>
			<cite><span>帐号类型：</span><select id="" name="AccType">
					<option value="01">UMPS账号(不超过16位长度)</option>
					<option value="02">银行账号</option>
					<option value="03">手机号</option>
					<option value="04">email地址</option>
					<option value="05">QQ号码</option>
				</select>
			</cite>	<br>
		
			<cite><span>密码：</span><input type="password" name="Pwd" check="required" placeholder="请输入旧密码"></cite><br>	
			<cite><span>新密码：</span><input type="password" name="NewPwd" check="required" placeholder="请输入新密码"></cite>	<br>	
			<cite><span>手机号码 ：</span><input type="text" name="MobNo" check="" placeholder="请输入手机号(非必填)"></cite><br>

			<br>
			<input type="submit" value="修改" style="margin-left: 84px;">
			
	</form>
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>