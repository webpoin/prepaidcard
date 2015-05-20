<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>



<div class="content">

	<h3>商户费率设置</h3>
	
	<form action="/rate_set.shtml" method="post" class="fukrm fukrm-check">
		
		<cite><span>商户手机号：</span><input type="text" name="mobile" check="" placeholder="如不填则根据状态查询"></cite><br>
		<cite><span>商户状态：</span><select name="status" >
					<option value="0" >有效</option>
					<option value="1" >无效</option>
			</select>
		</cite><br>
		<br>
		<cite><span></span><input type="submit" value="查询"></cite>		

			
	</form>
				
	
	<div class="table">
		<table cellspacing=0 >

			<thead>
				<tr>
					<th>商户编号</th>
					<th>商户名称</th>
					<th>法人代表</th>
					<th>法人身份证号</th>
					<th>手机号码</th>
					<th>通讯地址</th>
					<th>电子邮箱</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
				<tbody>
				<c:if test="${empty pageSupport}"><tr><td colspan="12">
					<c:if test="${empty msg}">此查询期内无记录！</c:if>
					<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
				</td></tr></c:if>
				<c:if test="${!empty pageSupport}">	
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
			begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
			end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td>${pageSupport.merchantno}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.corporationname}</td>
					<td>${pageSupport.idcard}</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td>
						<c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
						<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if>
					</td>
					<td>
					<c:if test="${pageSupport.status eq '0'}">
			<a href="/queryMerchantrate.shtml?id=${pageSupport.id}" onclick="return confirm('确定设置?')"><span style="color:red;">设置费率</span></a>
					</c:if>	
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