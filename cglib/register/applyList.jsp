<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>申请加盟列表</h3>

	
	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th>联系方式</th>
					<th>姓名</th>
					<th>公司名称</th>
					<th>地址</th>
					<th>状态</th>
					<th>时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody> 
			
			<c:if test="${empty pageSupport.result}"><tr><td colspan="7"><div style="text-align: center;"><img src='/images/no_bg4.png'></div></td></tr></c:if>
			<c:if test="${!empty pageSupport}">
			<c:forEach var="pageSupport" items="${pageSupport.result}" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.username}</td>
					<td>${pageSupport.province}${pageSupport.city}${pageSupport.county}${pageSupport.address}</td>
					<td>
						<c:if test="${pageSupport.state eq '0'}"><font color="green">未读</font></c:if>
						<c:if test="${pageSupport.state eq '1'}">已读</c:if>
					</td>
					<td><fmt:formatDate value="${pageSupport.sysdate}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td>
						<c:if test="${pageSupport.state eq '0'}"><a href="applyUpdate.shtml?id=${pageSupport.id}">已读</a></c:if>
					</td>
				</tr>
			</c:forEach>
			</c:if>
			</tbody>
		</table>
				
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>
	

</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>
