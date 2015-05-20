<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<style>
	.fukrm_textarea{display: block;margin-right: 15px; height: 80px;margin-top: 10px;margin-bottom: 20px;}
	.fukrm_textarea textarea{width: 100%;height: 100%;}
</style>
<div class="content">
	<h3>积分规则定义</h3>

	<form action="#" class="fukrm">
			
		<c:forEach var="Rulelist" items="${Rulelist}">
			
			<span style="display:block;margint-top:20px;">积分兑换规则：</span>
			<c:if test="${!empty Rulelist.exchangerules}"><textarea name="exchangerules" readonly="readonly">${Rulelist.exchangerules}</textarea></c:if>
			<c:if test="${empty Rulelist.exchangerules}"><textarea name="exchangerules" readonly="readonly">您还未定义积分兑换规则</textarea></c:if>

			
			<span style="display:block;margint-top:20px;">积分充值赠送规则：</span>
			<c:if test="${!empty Rulelist.rechargerules}"><textarea name="exchangerules" readonly="readonly">${Rulelist.rechargerules}</textarea></c:if>
			<c:if test="${empty Rulelist.rechargerules}"><textarea name="exchangerules" readonly="readonly">您还未定积分充值赠送规则</textarea></c:if>

			<br>
			<a class="link_submit" href="/dic.do?method=QueryRules&id=${Rulelist.id}">修改编辑</a>
			
		</c:forEach>
	</form>


</div>

<jsp:include page="/cglib/foot.jsp" flush="true"/>