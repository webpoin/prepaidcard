<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>退卡</h3>

	<form action="/exit_card.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		<cite><span>卡状态：</span><input type="text"  value="未启用的卡" disabled="disabled"></cite>

		<cite><input type="submit" value="查询" ></cite>			

	</form>
	
	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th><input type="checkbox" name="check" id="checkids">全选</th>
					<th>会员卡号</th>
					<th>会员卡状态</th>
					<th>导入时间</th>
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
					<td card="${pageSupport.id}"><input type="checkbox" name="check" id="checkids"></td>
					<td>${pageSupport.cardno}</td>
					<td><c:if test="${pageSupport.status eq '1'}"><font color="green">未启用</font></c:if></td>
					<td><fmt:formatDate value="${pageSupport.importtime}"  pattern="yyyy-MM-dd HH:mm"/></td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
				
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>

	<c:if test="${!empty pageSupport}"><br><a href="/Exit.html" id="sendsms" class="link_submit">退卡</a></c:if>


</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script type="text/javascript">
	$('#checkids').on('click',function(){
	
		if(	$(this).prop('checked')){
			$(this).closest('table').find('input').not($(this)).prop('checked',true);
		}else{
			$(this).closest('table').find('input').not($(this)).prop('checked',false);
		}
	});


	$('#sendsms').on('click',function(){
	
		var numbers = [];
		$('.sendsmsres').find('tbody').find('input').each(function(){
			if(	$(this).prop('checked')){
				numbers.push($(this).closest('tr').find('td').eq(0).attr('card'));
			}
		});
		
		
		if(numbers.length<1){
			alert('请选择需要退的卡！ ')
			return false;
		}
		
		$.ajax({
			type: "POST",
			dataType:'json',
			url: $(this).attr('href'),
			data: {'id':numbers.join(',')},
			success: function(data) {
				if(data.status && data.status === '200'){
					alert('退卡成功！ ');
					window.location.href = data.url || '';
				}else{
					alert(data.message);
				}
			}
		});

		
		return false;
		
		
	})
		
		

</script>
