<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>查询商户</h3>

	<form action="/distribution.html" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		<cite><span>商户状态：</span><input type="text" value="有效" disabled="disabled"></cite>
		<cite><input type="submit" value="查询" ></cite>		
	</form>

	
	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th>商户名称</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
			<c:if test="${empty pageSupport}"><tr><td colspan="2">
				<c:if test="${empty msg}">此查询期内无记录！</c:if>
				<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
			</td></tr></c:if>
			<c:if test="${!empty pageSupport}">
			<c:forEach var="pageSupport" items="${pageSupport.result}"
					varStatus="status"
					begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr><td>${pageSupport.corporationname}</td>
					<td><a href="/distributionCard.html?radio=${pageSupport.id}" class="dialog-ajax" style="color:#14A136">分销选卡</a></td>
				</tr>
			</c:forEach>
			</c:if>
			</tbody>

		</table>
		
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>

	</div>
	
</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script>
	$('.dialog-ajax').on('click',function(){

		GLOBAL.url = this.getAttribute('href');

		// 异步对话框
		$.ajax({
			type: "POST",
			dataType:'text',
			url: GLOBAL.url,
			success: function(text) {
				dialog.html(text).dialog('open')
			},
			error:function(){}
		});
		return false;
	});


</script>






