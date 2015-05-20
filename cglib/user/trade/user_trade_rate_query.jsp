<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>商户费率查询</h3>

	<form action="/rate_query.shtml" method="post" class="fukrm fukrm-check">

		<cite><span>商户手机号：</span>
			<input type="text" name="mobile" check="" placeholder="如不填则根据状态查询">
		</cite><br>
	
		<cite><span>审核状态：</span><select name="ratestatus">
				<option value="" selected="selected">全部</option>
				<option value="0">已审核</option>
				<option value="1">待审</option>
			</select>
		</cite><br>
		
		<br>
		<cite><span></span><input type="submit" value="查询" ></cite>
	</form>


	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
					<th>商户名称</th>
					<th>法人代表</th>
					<th>手机号码</th>
					<th>通讯地址</th>
					<th>电子邮箱</th>
					<th>费率</th>
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
			<c:forEach var="pageSupport" items="${pageSupport.result}"
				varStatus="status"
				begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
				end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.corporationname}</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td>${pageSupport.rate}</td>
					<td>
						<c:if test="${pageSupport.ratestatus eq '0'}">
							<font color="green">已审核</font>
						</c:if>
						<c:if test="${pageSupport.ratestatus eq '1'}">
							<font color="red">待审</font>
						</c:if>
					</td>
					<td>
						<a href="#" class="more" title="${pageSupport.name}详细信息">详细</a>
						<div class="moreinfo">
							<table>
								<tr><td>商户编号</td><td>${pageSupport.merchantno}</td><td>商户名称</td><td>${pageSupport.name}</td></tr>
								<tr><td>法人代表</td><td>${pageSupport.corporationname}</td><td>法人身份证号</td><td>${pageSupport.idcard}</td></tr>
								<tr><td>手机号码</td><td>${pageSupport.mobile}</td><td>通讯地址</td><td>${pageSupport.address}</td></tr>
								<tr><td>电子邮箱</td><td>${pageSupport.email}</td><td>费率</td><td>${pageSupport.rate}</td></tr>
							</table>
						</div>
					</td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>

</div>



<jsp:include page="/cglib/foot.jsp" flush="true" />
