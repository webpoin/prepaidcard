<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<style>
	.fukrm cite>span{display: inline-block;width: 84px;white-space: normal;text-align: right;}
</style>
<div class="content">
	<h3>账户信息查询</h3>

	<form action="/user_card_queryinfo.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<cite><span>卡号：</span><input type="text" name="AcctId"  check="required,number" placeholder="请输入卡号"></cite><br>
		<cite><span>密码：</span><input type="password" name="Pwd"  check="required" placeholder="请输入密码"></cite><br>
		<input type="hidden" name="AccType"  value="00"/>
		<cite><span>手机号：</span><input type="text" name="MobNo" ></cite><br>
		<br>
		<input type="submit" value="查询" style="margin-left: 84px;">
	</form>
	<c:if test="${empty userList}"><span style="color: red;">${msg}</span></c:if>
	
	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
				    <th>序列号</th>
					<th>卡号</th>
					<th>帐号</th>
					<th>注册时间</th>
					<th>用户名</th>
					<th>余额</th>
					<th>冻结金额</th>
					<th>信用额度</th>
					<th>积分余额</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty userList}"><tr><td colspan="9">
					<c:if test="${flag != false}">此查询期内无记录！</c:if>
					<c:if test="${flag == false}"><span style="color:#f00">${msg}</span></c:if>
				</td></tr></c:if>
				
				<c:if test="${!empty userList}">
				<c:forEach var="userList" items="${userList}">
						<tr>	
						<td>${userList.PackId}</td>
						<td>${userList.CardNo}</td>
						<td>${userList.acctId}</td>
						<td><fmt:formatDate value="${userList.RegTime}"  pattern="yyyy-MM-dd HH:mm"/></td>
						<td>${userList.UserName}</td>
						<td>${userList.Balance}</td>
						<td>${userList.FreezeFee}</td>
						<td>${userList.CreditFee}</td>
						<td>${userList.JiFenBalance}</td>
					</tr>
				</c:forEach>
				</c:if>
				
			</tbody>
		</table>
	</div>
	

</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>