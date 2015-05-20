<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

	<div class="content">

		<h3>添加黑名单</h3>

		<form action="/addblacklistreason.shtml" method="post" class="fukrm js-form-note" >

			<input type="hidden" name = "id" value = "${memberid }">
		
			<cite><span>会员卡号：</span><input type="text" name="cardno" value="${memberCard.cardno}" disabled="disabled"></cite><br>
		
			<cite><span>会员名称：</span><input type="text" name="name" value="${memberCard.name}" disabled="disabled"></cite><br>
		
			<cite><span>添加黑名单理由：</span><textarea rows="5" cols="45" name="blacklistreason"></textarea></cite><br>
		
			<input type="submit" value="提交" style="margin-left: 84px;">
		</form>


	</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>