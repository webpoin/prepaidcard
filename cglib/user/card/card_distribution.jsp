<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- 
	<form action="/distributionCard.html" method="post" class="fukrm js-form-check">
		<cite><span>卡状态：</span><input type="text" value="未启用" disabled="disabled"></cite>
		<input type="submit" value="查询">
	</form>
 -->

	<div class="table dialog_distribution"  style="width: 500px;margin:5px;">
		<table cellspacing=0 class="sendsmsres">
			<thead>
				<tr>
					<th><input type="checkbox" name="check" id="checkids" >全选</th>
					<th>会员卡号</th>
					<th>卡类型</th>
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
					<td cardmid="${pageSupport.id}" align="center"><input type="checkbox" name="check" id="checkids"></td>
<!--							<td>${pageSupport.id}</td>-->
					<td>${pageSupport.cardno}</td>
<!--							<td>${pageSupport.merchantnoid}</td>-->
                    <td>
                        <c:if test="${pageSupport.cardtype eq '1'}"><font color="green">普通卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '2'}"><font color="green">银卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '3'}"><font color="green">金卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '4'}"><font color="green">白金卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '5'}"><font color="green">钻石卡</font></c:if>
					</td>
				</tr>
			</c:forEach>
			</c:if>
			</tbody>
		</table>

		<div class="ajaxpage" total="${pageSupport.totalRecordCount}"
			each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}"
			ajax="false"></div>
	</div>
	<br>
	<c:if test="${!empty pageSupport}"><div style="text-align:center"><a href="#" class="link_submit">分销卡</a></div></c:if>

	<br><br><br>



<script type="text/javascript">

	dialog.dialog("option","title", '选择分销卡');

	$('.dialog_distribution .ajaxpage').page();	

	$('#checkids').on('click',function(){
		if(	$(this).prop('checked')){
			$(this).closest('table').find('input').not($(this)).prop('checked',true);
		}else{
			$(this).closest('table').find('input').not($(this)).prop('checked',false);
		}
	});


	$('.link_submit').on('click',function(){
	

		var numbers = [];
		$('.sendsmsres').find('tbody').find('input').each(function(){
			if(	$(this).prop('checked')){
				numbers.push($(this).closest('tr').find('td').eq(0).attr('cardmid'));
			}
		});
		
		if(numbers.length<1){
			alert('请选择需要分销的会员卡！ ')
			return false;
		}
			
		$.ajax({
			type: "GET",
			dataType:'json',
			url: '/CardSale.html',
			data: {'id':numbers.join(',')},
			success: function(data) {
				if(data.status && data.status === '200'){
					alert('分销成功！ ');
					window.location.href = data.url || '';
				}else{
					alert(data.message);
				}
			}
		});
		return false;
	});


	// 对话框分页
	$('.ajaxpage').on('click','a',function(){

		// 异步对话框
		$.ajax({
			type: "POST",
			dataType:'text',
			url: this.getAttribute('href').replace(/\/card_distribution\.html\?/,GLOBAL.url),
			success: function(text) {
				dialog.html(text).dialog('open');
			},
			error:function(){}
		});


		return false;

	});
</script>

