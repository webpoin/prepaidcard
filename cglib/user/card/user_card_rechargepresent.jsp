<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>积分充值赠送规则</h3>

	
	<form action="/rechargerules.shtml" method="post" class="fukrm fukrm-check">
	
	
		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" style="width:200px"></cite>	<br>
		<cite><span>商户手机号：</span><input type="text" name="mobile" check="required,phone" placeholder="请输入手机号"></cite><br>

		<c:if test="${empty Rulelist}">
			<cite><span></span><font color="red">${msg}</font></cite>
		</c:if><br>

		<input type="submit" value="查询" style="margin-left: 84px;">
	</form>
	

	<c:forEach var="Rulelist" items="${Rulelist}">
		<span style="display: inline-block;margin-top:20px;">积分充值赠送规则：</span><br>
		<textarea name="rechargerules" rows="10" cols="100" style="margin-top: 10px;width: 100%;" readonly="readonly">${Rulelist.rechargerules}</textarea><br>
	</c:forEach>

</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>