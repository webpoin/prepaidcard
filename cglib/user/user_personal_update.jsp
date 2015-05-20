<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<jsp:include page="/cglib/validation.jsp"/>
<div class="content">

	<h3>个人资料修改</h3>

	<form action="/user_personal_update.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
	

		<cite><span>帐号：</span><input type="text" name="AcctId" check="required,number"></cite><br>		
		
		<!-- 
			<cite><span>帐号类型：</span><select id="" name="AccType">
				<option value="01">UMPS账号(不超过16位长度)</option>
				<option value="02">银行账号</option>
				<option value="03">手机号</option>
				<option value="04">email地址</option>
				<option value="05">QQ号码</option>
			</select>
		</cite>	
		 -->	
		<cite><span>用户姓名：</span><input type="text" name="UserName" ></cite><br>	
		<cite><span>性别：</span><select id="" name="Sex" disabled="disabled">
				<option value="1">男</option>
				<option value="2">女</option>
			</select>
		</cite>		
		<input type="hidden" name="Birthday" class="datepicker" style="width:120px;margin-right:10px;">
		<input type="hidden" name="Profession" >
		<input type="hidden" name="Hobby" >
		<input type="hidden" name="Addr" >

		<input type="hidden" name="ZipCode" >
		<input type="hidden" name="TelNo" >
		<input type="hidden" name="MobileNo" >
		<input type="hidden" name="Email" >
		<input type="hidden" name="FaxNo" >
		<input type="hidden" name="ContactMan" >
		<input type="hidden" name="CMTel" >
		<input type="hidden" name="AreaCode" >



		<input type="hidden" name="CreCardType" 
		<input type="hidden" name="CreCardNo" >
		<input type="hidden" name="ValidYear" >
		<input type="hidden" name="ValidMonth" >
		<input type="hidden" name="Cvv" >
		<input type="hidden" name="MobNo" >
		<br><br>
		<cite><span></span><input type="submit" value="修改" ></cite>
	</form>
	
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>