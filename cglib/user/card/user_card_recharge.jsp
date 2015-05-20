<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>余额充值</h3>

	<form action="/user_card_rechange.shtml" method="post" class="fukrm fukrm-check js-form-note"  enctype="multipart/form-data">
		
		<cite><span>账号：</span><input type="text" name="CardNo" check="required,number" placeholder="请输入账号"></cite><br>
		<cite><span>交易金额：</span><input type="text" name="Amount" check="required,number"  placeholder="请输入金额"></cite><br>
	
		<cite><span>冲销标志：</span><select id="" name="BackoutFlag">
				<option value="0">正常</option>
				<option value="1">冲正</option>
			</select>
		</cite><br>
		<cite><span>手机号码：</span><input type="text" name="MobNo"  placeholder="请输入手机号"></cite><br>
		<br>
		<input type="submit" value="查询" style="margin-left: 84px;">
	</form>


</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>