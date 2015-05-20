<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>


<div class="content">
	<h3>商户费率审核</h3>
		
	
	<form action="/Merchantrates.shtml" method="post" class="fukrm fukrm-check">
		
		<cite><span>商户手机号：</span><input type="text" name="mobile" check="" placeholder="如不填则根据状态查询"></cite><br>
		<cite><span>商户状态：</span><select name="ratestatus" >
				<option value="" selected="selected" >全部</option>
					<option value="0" >已审核</option>
					<option value="1" >待审</option>
			</select>
		</cite><br>

		<br>
		<cite><span></span><input type="submit" value="查询" ></cite>

	</form>
	<div class="table">
		<table cellspacing=0  class="sendsmsres">

			<thead>
				<tr>
					<th><input type="checkbox" name="check" id="checkids" >全选</th>
					<th>商户编号</th>
					<th>商户名称</th>
					<th>法人代表</th>
					<th>法人身份证号</th>
					<th>手机号码</th>
					<th>通讯地址</th>
					<th>电子邮箱</th>
					<th>费率</th>
					<th>状态</th>
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
					<td merchant="${pageSupport.id}"><input type="checkbox" name="check" id="checkids"></td>
					<td>${pageSupport.merchantno}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.corporationname}</td>
					<td>${pageSupport.idcard}</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td>${pageSupport.rate}</td>
					<td>
						<c:if test="${pageSupport.ratestatus eq '0'}"><font color="green">已审核</font></c:if>
						<c:if test="${pageSupport.ratestatus eq '1'}"><font color="red">待审</font></c:if>
					</td>
				</tr>

			</c:forEach>
			</c:if>	
				
			</tbody>
		</table>
		
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
		
	</div>
	
	<c:if test="${!empty pageSupport}"><a href="/checkrate.shtml"  id="sendsms" class="link_submit">审核费率</a></c:if>	
	
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
				numbers.push($(this).closest('tr').find('td').attr('merchant'));
			}
		});
		
		
		if(numbers.length<1){
			alert('请选择审核对象！ ')
			return false;
		}	
		$.ajax({
			type: "POST",
			dataType:'json',
			url: $(this).attr('href'),
			data: {'id':numbers.join(',')},
			success: function(data) {
				if(data.status && data.status === '200'){
					alert('审核成功！ ');
					window.location.href = data.url || '';
				}else{
					alert(data.message);
				}
			}
		});

		return false;	
		
	})

</script>