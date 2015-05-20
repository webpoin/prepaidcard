<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>添加黑名单</h3>

	<form action="/blacklistCard.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		<cite><span>会员卡号：</span><input type="text" name="cardno" check="required,number" placeholder="请输入卡号"></cite>
		<cite><input type="submit" value="查询" ></cite>		
	</form>



	<div class="table">
		<table cellspacing=0 class="">
			<thead>
				<tr>
					<th>会员ID</th>
					<th>会员卡号</th>
					<th>会员名称</th>	
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
			<c:if test="${empty blacklist}"><tr><td colspan="12">
				<c:if test="${empty msg}">此查询期内无记录！</c:if>
				<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
			</td></tr></c:if>

			<c:if test="${!empty blacklist}">
			<c:forEach var="blacklist" items="${blacklist}">
				<tr>	
					<td>${blacklist.id}</td>
					<td>${blacklist.cardno}</td>
					<td>${blacklist.name}</td>
					<td><a href="/dic.do?method=MemberById&id=${blacklist.id}">添加黑名单</a></td>
				</tr>
			</c:forEach>
			</c:if>
			</tbody>
		</table>
	</div>


</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>