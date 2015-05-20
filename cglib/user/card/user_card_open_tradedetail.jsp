<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content" >
	<h3>会员卡开卡明细查询</h3>
	<form action="/MemberByCreateTime.shtml" method="post" class="fukrm fukrm-check">
		<cite>
			<span>开卡时间：</span>
			<input type="text" name="starttime" class="datepicker" style="width:120px" placeholder="开始"/>
			<span style="width:auto;">至</span>
			<input type="text" name="endtime" class="datepicker" style="width:120px;" placeholder="结束" />
		</cite>
		<input type="submit" value="查询" >
		<p style="margin-left:84px;">请输入正确的时间格式，例如2015-02-01</p>
	</form>
	<div class="table table-t1">
		<table cellspacing=0 >
			<thead>
				<tr>
					<th>会员卡号</th>
					<th>姓名</th>
					<th>身份证号码</th>
					<th>会员卡状态</th>
					<th>短信服务</th>
					<th>手机号</th>
					<th>通讯地址</th>
					<th>邮件</th>
					<th>注册时间</th>
				</tr>
			</thead>
			<tbody>
				
				<c:if test="${empty pageSupport}"><tr><td colspan="9">
				<c:if test="${empty msg}">此查询期内无记录！</c:if>
				<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
				</td></tr></c:if>
				
				<c:if test="${!empty pageSupport}">
					<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
					begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td>${pageSupport.cardno}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.idcard}</td>
					<td>
						<c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
						<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if>
					</td>
					<td>
						<c:if test="${pageSupport.message eq '0'}"><font color="green">已开通</font></c:if>
						<c:if test="${pageSupport.message eq '1'}"><font color="red">未开通</font></c:if>
					</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td><fmt:formatDate value="${pageSupport.createtime}"  pattern="yyyy-MM-dd"/></td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	
	</div>
</div>

<jsp:include page="/cglib/foot.jsp" flush="true"/>