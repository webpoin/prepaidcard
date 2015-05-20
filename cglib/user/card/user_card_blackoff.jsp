<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">

	<h3>解除黑名单</h3>

	<form action="/removeblacklist.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<cite><span>会员卡号：</span><input type="text" name="cardno" check="required,number" placeholder="请输入卡号"></cite><br>

		<cite><span>状态：</span><input type="text" name="status" value="有效黑名单" disabled="disabled"></cite><br>
		<br>
		<cite><span></span><input type="submit" value="查询" ></cite>			
	</form>


	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
				<th><input type="checkbox" name="check" id="checkids" >全选</th>
					<th>会员ID</th>
					<th>会员卡号</th>
					<th>会员名称</th>
					<th>黑名单原因</th>
					<th>状态</th>
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
					<td><input type="checkbox" name="check" id="checkids"></td>	
					<td>${blacklist.id}</td>
					<td>${blacklist.cardno}</td>
					<td>${blacklist.name}</td>
					<td>${blacklist.blacklistreason}</td>
					<td>
					<c:if test="${blacklist.blackliststatus eq 0}"><font color="red">有效黑名单</font></c:if>
					<c:if test="${blacklist.blackliststatus eq 1}"><font color="green">黑名单已解除</font></c:if>
					</td>
				</tr>
			</c:forEach>
			</c:if>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>

	
	<c:if test="${!empty blacklist}"><a href="/Blacklist.shtml" class="link_submit" id="sendsms"><span>解除黑名单</span></a></c:if>

</div>

<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script type="text/javascript">
	$('#checkids').on('click',function(){
	
		if(	$(this).prop('checked')){
			$(this).closest('table').find('input').not($(this)).prop('checked',true);
		}else{
			$(this).closest('table').find('input').not($(this)).prop('checked',false);
		}
	})


	$('#sendsms').on('click',function(){
	
		var numbers = [];
		$('.sendsmsres').find('tbody').find('input').each(function(){
			if(	$(this).prop('checked')){
				numbers.push($(this).closest('tr').find('td').eq(1).html());
			}
		});
		
		
		if(numbers.length<1){
			alert('请选择解除对象！ ')
			return false;
		}
		
		$.ajax({
			type: "POST",
			dataType:'json',
			url: $(this).attr('href'),
			data: {'id':numbers.join(',')},
			success: function(data) {
				if(data.status && data.status === '200'){
					alert('解除成功！ ');
					window.location.href = data.url || '';
				}else{
					alert(data.message);
				}
			}
		});

		return false;
	})	

</script>
