<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<style>
	.fukrm cite{width: 100%;}
	.fukrm cite>span{width: auto;}
	.fukrm_textarea{display: block;margin-right: 15px;}
	.fukrm cite textarea{width: 100%;}
</style>
<div class="content">
	<h3>编辑积分规则</h3>

	<form action="/updateRules.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
		
		<input type="hidden" name = "id" value = "${ merchantid }">

		<cite><span>积分兑换规则：</span><br><textarea name="exchangerules" rows="5" cols="90">${merchant.exchangerules}</textarea></cite><br>

		<cite><span>积分充值赠送规则：</span><br><textarea name="rechargerules" rows="20" cols="90">${merchant.rechargerules}</textarea></cite><br>
				
		<br>	
		<cite><input type="submit" value="提交"></cite>
				
	</form>
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>