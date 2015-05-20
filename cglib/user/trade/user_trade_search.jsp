<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>


<div class="content">
	<h3>商户资料管理 <a href="/addMerchant.shtml"><img src="/images/icon_title_add.png" >添加商户</a></h3>

	<form action="/trade_search.shtml" method="post" class="fukrm fukrm-check">
	
		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" style="width:200px"></cite><br>
		<cite><span>商户手机号：</span><input type="text" name="mobile"  placeholder="请输入手机号"></cite><br>

		<cite><span>商户状态：</span><select name="status" >
				<option value="0">正常</option>
				<option value="1">禁用</option>
			</select>
		</cite><br>
		<br>
		<cite><span></span><input type="submit" value="查询" ></cite>
		
	</form>

	<div class="table">
		<table cellspacing=0 >

			<thead>
				<tr>
					<th>商户名称</th>
					<th>法人代表</th>
					<th>手机号码</th>
					<th>通讯地址</th>
					<th>电子邮箱</th>
					<th>商户状态</th>
					<th>创建时间</th>
					<th>修改时间</th>
					<th style="text-align:center">操作</th>
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
					<td>${pageSupport.name}</td>
					<td>${pageSupport.corporationname}</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td><c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
						<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if></td>
					<td><fmt:formatDate value="${pageSupport.createtime}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td><fmt:formatDate value="${pageSupport.updatetime}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td>
						<a href="">查看</a>
					<c:if test="${pageSupport.status eq '0'}">
						<a href="/queryMerchantById.shtml?id=${pageSupport.id}" onclick="return confirm('确定修改?')">修改</a>
						<a href="/delMerchant.shtml?id=${pageSupport.id}" style="color:#ee2323;" onclick="return confirm('确定删除?')">删除</a>
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