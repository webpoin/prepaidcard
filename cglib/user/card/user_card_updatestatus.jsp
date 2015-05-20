<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>修改卡状态</h3>

	<form action="/user_card_updatestatus.shtml" method="post" class="fukrm fukrm-check js-form-note"  enctype="multipart/form-data">
		
		<input type="hidden" name="OperNo" check="required" placeholder="请输入商家编号">
		<cite><span>帐号：</span><input type="text" name="CardNo" check="required,number"  placeholder="请输入账号"></cite>	<br>

		<cite><span>密码：</span><input type="password" name="Pwd" check="required"  placeholder="请输入密码"></cite><br>	

		<cite><span>操作类型：</span><select name="OperType">
<!--				<option value="11">自助挂失</option>-->
<!--				<option value="12">自助解挂</option>-->
				<option value="13">非自助挂失</option>
				<option value="14">非自助解挂</option>
				<option value="15">账户注销</option>
				<option value="16">卡注销（非自助）</option>
			</select>
		</cite><br>	
		<cite><span>实退金额：</span><input type="text" name="DealFee" check="" placeholder="可以为空"></cite><br>	
		
		<br>
		<br>
		<input type="submit" value="修改" style="margin-left: 84px;">
	</form>

</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>