<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">

	<h3>余额积分查询</h3>

	<form action="/user_card_balancesearch.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<c:if test="${flag == false}"><font color="red">${msg}</font></c:if>
		<input type="hidden" name="MobNo" placeholder="可以为空">
		<cite><span>帐号：</span><input type="text" name="CardNo"  check="required,number" placeholder="请输入账号"></cite><br>
		
		<cite><span>查询类型：</span><select id="SelectType" name="SelectType">
				<option value="00">余额查询</option>
				<option value="01">积分查询</option>
			</select>
		</cite><br>
		<br>
		<cite><span></span><input type="submit" value="查询"></cite>

	</form>

	
	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
				    <th>序列号</th>
					<th>帐号</th>
					<th>余额/积分</th>
				</tr>
			</thead>
		
			<tbody>
			<c:if test="${empty balancelist}"><tr><td colspan="12">
				<c:if test="${flag != false}">此查询期内无记录！</c:if>
				<c:if test="${flag == false}"><span style="color:#f00">${msg}</span></c:if>
			</td></tr></c:if>
			<c:if test="${!empty balancelist}">
			<c:forEach var="balancelist" items="${balancelist}">
				<tr>	
					<td>${balancelist.PackId }</td>
					<td>${balancelist.CardNo }</td>
					<td>${balancelist.Balance }</td>
				</tr>
			</c:forEach>	
			</c:if>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>



</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>