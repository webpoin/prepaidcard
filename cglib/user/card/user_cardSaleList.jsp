<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>分销记录</h3>

	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th>会员卡号</th>
					<th>分销的商户</th>
					<th>联系方式</th>
					<th>分销日期</th>
				</tr>
			</thead>
			<tbody> 
			<c:if test="${empty pageSupport.result}"><tr><td colspan="4"><div style="text-align: center;"><img src='/images/no_bg4.png'></div></td></tr></c:if>
			<c:forEach var="pageSupport" items="${pageSupport.result}" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td>${pageSupport.cardno}</td>
					<td>${pageSupport.corporationname}</td>
					<td>${pageSupport.mobile}</td>
					<td><fmt:formatDate value="${pageSupport.sysdate}"  pattern="yyyy-MM-dd HH:mm"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>

</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>

