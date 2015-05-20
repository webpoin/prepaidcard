<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">

	<h3>积分扣减</h3>

	<form action="/rechargeOut.shtml" method="post" class="fukrm fukrm-check js-form-note"  enctype="multipart/form-data">
		<input type="hidden" name="OpenNo" check=""  placeholder="可以为空">

		<cite><span>账号：</span><input type="text" name="CardNo" check="required,number" placeholder="请输入账号"></cite><br>
		<cite><span>密码：</span><input type="password" name="Pwd" check="required" placeholder="请输入密码"></cite><br>
	
		<cite><span>积分数量：</span><input type="text" name="IntegralNum" check="required,number" placeholder="请输入积分数量"></cite><br>
		
		
		<cite><span>交易类型：</span><select name="RecType" >
				<option value="0">正向交易</option>
				<option value="1">冲正交易</option>
			</select>
		</cite><br>

		<br>
		<cite><span></span><input type="submit" value="扣减"></cite>
		
	</form>


</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>