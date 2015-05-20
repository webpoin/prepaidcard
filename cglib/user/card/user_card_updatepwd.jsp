<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>修改卡密码</h3>

	<form action="/user_card_updatepwd.shtml" method="post" class="fukrm fukrm-check js-form-note"  enctype="multipart/form-data">
		

		<cite><span>帐号：</span><input type="text" name="AcctId" check="required,number"></cite><br>	
<!--		<cite><span>帐号类型：</span>-->
<!--			<select id="" name="AccType">-->
<!--				<option value="01">UMPS账号(不超过16位长度)</option>-->
<!--				<option value="02">银行账号</option>-->
<!--				<option value="03">手机号</option>-->
<!--				<option value="04">email地址</option>-->
<!--				<option value="05">QQ号码</option>-->
<!--			</select>-->
<!--		</cite>	-->
		<cite><span>旧密码：</span><input type="password" name="Password" check="required,number"></cite><br>		
		<cite><span>新密码：</span><input type="password" name="NewPassword" check="required,number"></cite><br>	
		
		<br>
		<input type="submit" value="修改" style="margin-left: 84px;">

	</form>
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>