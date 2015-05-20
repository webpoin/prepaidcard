<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>商户费率设置</h3>
	
	<form action="/updateRate.shtml" method="post" class="fukrm fukrm-check js-form-note">
	
		<input type="hidden" name = "id" value = "${merchantid}">

		<cite><span>费率：</span><input type="text" name="rate" check="required,numbers" value="${merchant.rate}"></cite>
		<cite><input type="submit" value="提交"></cite>
		
	</form>
	
</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>