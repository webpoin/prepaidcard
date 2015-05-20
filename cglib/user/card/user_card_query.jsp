<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">

	<h3>会员卡查询<a class="opendialog"><img src="/images/icon_title_add.png" ><span>添加会员</span></a></h3>
	
	<form action="/MemberCard.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<cite><span>会员账号：</span><input type="text" name="cardno"></cite><br>
		<cite><span>会员卡状态：</span><select name="status">
				<option value="">全部</option>
				<option value="0">已分销</option>
				<option value="1">未分销</option>
			</select> 
		</cite><br>


		<cite><span>会员卡级别：</span><select name="cardtype" >
				<option value="">全部</option>
				<option value="1">普通</option>
				<option value="2">银卡</option>
				<option value="3">金卡</option>
				<option value="4">白金卡</option>
				<option value="5">砖石</option>
			</select>
		</cite><br>

		<br>
		<input type="submit" value="查询" style="margin-left: 84px;">

	</form>

	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
					<th>会员卡号</th>
					<th>姓名</th>
					<th>身份证号码</th>
					<th>会员卡状态</th>
					<th>卡类型</th>
					<th>短信服务</th>
					<th>手机号</th>
					<th>通讯地址</th>
					<th>邮件</th>
					<th>注册时间</th>
					<th>修改时间</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody> 
				
				<c:if test="${empty pageSupport}"><tr><td colspan="12">
					<c:if test="${empty msg}">此查询期内无记录！</c:if>
					<c:if test="${!empty msg}"><span style="color:#f00">${msg}</span></c:if>
				</td></tr></c:if>

				<c:if test="${!empty pageSupport}"><tr><td colspan="12">
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
					begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
					end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr><td>${pageSupport.cardno}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.idcard}</td>
					<td>
					 	<c:if test="${pageSupport.startcard ne userid}"><font color="green">已分销</font></c:if>
					 	<c:if test="${pageSupport.startcard eq userid}"><font color="red">未分销</font></c:if>
					</td>
					<td>
						<c:if test="${pageSupport.cardtype eq '1'}"><font color="green">普通</font></c:if>
						<c:if test="${pageSupport.cardtype eq '2'}"><font color="green">银卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '3'}"><font color="green">金卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '4'}"><font color="green">白金卡</font></c:if>
						<c:if test="${pageSupport.cardtype eq '5'}"><font color="green">钻石</font></c:if>
					</td>
					<td>
					 	<c:if test="${pageSupport.message eq '0'}"><font color="green">已开通</font></c:if>
					 	<c:if test="${pageSupport.message eq '1'}"><font color="red">未开通</font></c:if>
					</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.address}</td>
					<td>${pageSupport.email}</td>
					<td><fmt:formatDate value="${pageSupport.createtime}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td><fmt:formatDate value="${pageSupport.updatetime}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td>
						<c:if test="${pageSupport.status eq '0'}">
						<a href="/QueryMember.shtml?id=${pageSupport.id}" onclick="return confirm('确定修改?')">修改</a>
						<a href="/delMemberCard.shtml?id=${pageSupport.id}" onclick="return confirm('确定删除?')">删除</a>
						</c:if>
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

</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script type="text/javascript">
	$(function(){
		$('.opendialog').click(function(){
			var id= $(this).attr('data');
			$.ajax({
					url:"/card_manage_add.shtml",
					data:{},
					dataType:"text",
					type:"post",
					success:function(data){
					dialog.html(data);
					dialog.dialog('open');
					
			}
		});		
			
	})
		
});		
</script>