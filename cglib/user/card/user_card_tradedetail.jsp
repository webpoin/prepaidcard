<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>


<div class="content">

<h3>会员卡消费明细查询</h3>

	<form action="/user_card_tradedetail.shtml" method="post" class="fukrm fukrm-check">
		
		<cite><span>卡号：</span><input type="text" name="CardNo" check="required,number" placeholder="请输入会员卡号" ></cite><br>
		<cite><span>密码：</span><input type="password" name="Pwd" check="" placeholder="请输入会员卡密码" ></cite><br>
		<!--<cite><span>商户编号：</span><input type="text" name="MerchantNo" check="required" placeholder="请输入商户编号"></cite>  -->
		<br>
		<cite><span></span><input type="submit" value="查询"></cite>
	</form>

	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
					<th>序列号</th>
					<th>商户编号</th>
					<th>商户名称</th>
					<th>商户地址</th>
					<th>交易终端号</th>
					<th>交易序列号</th>
					<th>会员卡帐号</th>
					<th>交易类型</th>
					<th>交易金额</th>
					<th>交易后余额</th>
					<th>交易时间</th>
				</tr>
			</thead>

			<tbody>
				<c:if test="${empty pageSupport}"><tr><td colspan="11">
					<c:if test="${empty msg}">此查询期内无记录！</c:if>
					<c:if test="${!empty msg}"><font color="red">${msg}</font></c:if>
				</td></tr></c:if>
				<c:if test="${pageSupport.result eq '0000'}"><c:if test="${!empty pageSupport}">
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
				begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
				end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>	
					<td>${pageSupport.PackId }</td>
					<td>${pageSupport.MerchantNum }</td>
					<td>${pageSupport.MerchantName }</td>
					<td>${pageSupport.MerchantAddr }</td>
					<td>${pageSupport.TerminalNo }</td>
					<td>${pageSupport.SeqNo }</td>
					<td>${pageSupport.CardNum }</td>
					<td>${pageSupport.TradeType }</td>
					<td>${pageSupport.Amount }</td>
					<td>${pageSupport.Balance }</td>
					<td><fmt:formatDate value="${pageSupport.TradeTime}"  pattern="yyyy-MM-dd HH:mm"/></td>
				</tr>	
				</c:forEach>
				</c:if></c:if>
			</tbody>
		</table>

		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>

	</div>
	


</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>