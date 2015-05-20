<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">

	<h3>短信账户管理</h3>
	
	<form action="/message.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
	
		<cite><span>会员手机号：</span><input type="text" name="mobile" placeholder="请输入已开通短信服务的手机号"></cite>
		<cite><input type="submit" value="查询" ></cite>
	</form>

	<div class="table">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th><input type="checkbox" name="check" id="checkids" >全选</th>
					<th>会员卡号</th>
					<th>会员名称</th>
					<th>手机号</th>
					<th>短信状态</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty pageSupport}"><tr><td colspan="5">
					<c:if test="${empty msg}">此查询期内无记录！</c:if>
					<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
				</td></tr></c:if>
				<c:if test="${!empty pageSupport}">
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
					begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>
					<td><input type="checkbox" name="check" id="checkids"></td>
					<td>${pageSupport.cardno}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.mobile}</td>
					<td>
						<c:if test="${pageSupport.message eq '0'}"><font color="green">已开通</font></c:if>
					</td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
	</div>


	<c:if test="${!empty pageSupport}">
	<form class="form_sendsms fukrm js-form-note" action="/SendMsg.shtml" method="post">
		<input type="hidden" name="phone" class="phonenum">
		<span>请输入要发送的短信内容：</span><br>

		<textarea rows="5"  name="content" class="smscontent" style="margin-top: 10px;width: 722px;"></textarea>	
		<br><br>
		<input type="submit" value="发送短信">
	</form>
	</c:if>


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


	$('.form_sendsms').on('submit',function(){
	
		var val = $('.smscontent').val();
		
		if(!val) {
			alert('请输入短信内容')
			$('.smscontent').focus();
			return false;
		}
		var numbers = [];
		$('.sendsmsres').find('tbody').find('input').each(function(){
			if(	$(this).prop('checked')){
				numbers.push($(this).closest('tr').find('td').eq(3).html());
			}
		});
		
		if(numbers.length<1){
			alert('请选择发送对象！ ')
			return false;
		}
		
		$('.phonenum').val(numbers.join(';'));
		
	});



</script>