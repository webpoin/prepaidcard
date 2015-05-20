<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">

	<h3>用户绑定</h3>

	<div class="table">

		<c:if test="${empty pageSupport}">
			<font color="red">${msg}</font>
		</c:if>

		<table cellspacing=0>
			<thead>
				<tr>
					<th>用户ID</th>
					<th>用户账号</th>
					<th>真实姓名</th>
					<th>最后修改时间</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
				begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
				end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>	
					<td>${pageSupport.id}</td>
					<td>${pageSupport.mobile}</td>
					<td>${pageSupport.username}</td>
					<td><fmt:formatDate value="${pageSupport.sysdate}"  pattern="yyyy-MM-dd HH:mm"/></td>
					<td>
					<c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
					<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if>
					</td>
					<td>
					    <a href="/updateUser.shtml?id=${pageSupport.id}" onclick="return confirm('确定修改?')">修改</a>
						<a href="/delUser.shtml?id=${pageSupport.id}" onclick="return confirm('确定删除?')">删除</a>
					</td>
				</tr>
			</c:forEach>	

			</tbody>

		</table>
		
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false"></div>
			
		
		<br><br>
		<a class="link_submit opendialog"><span>添加</span></a>  
		
	</div>

</div>



<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script type="text/javascript">
	$(function(){
		$('.opendialog').click(function(){
			$.ajax({
					url:"/userrole.shtml",
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