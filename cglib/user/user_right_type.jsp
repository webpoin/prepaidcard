<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>权限类型</h3>
		
	<div class="table">
		<c:if test="${empty pageSupport}">
			<font color="red">${msg}</font>
		</c:if>
		<table cellspacing=0>
			<thead>
				<tr>
					<th>状态</th>
					<th>权限名称</th>
					<th>权限描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			
				<c:if test="${!empty pageSupport}">
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
				begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
				end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>	
					<td>
					<c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
					<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if>
					</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.description}</td>
					<td>
					    <a href="/queryRoleInfo.shtml?id=${pageSupport.id}" onclick="return confirm('确定修改?')">修改</a>
						<a href="/delRole.shtml?id=${pageSupport.id}" onclick="return confirm('确定删除?')">删除</a>
					</td>
				</tr>
		  </c:forEach>	
			</c:if>
			</tbody>

		</table>
		<c:if test="${!empty pageSupport}">
			<div class="ajaxpage" total="${pageSupport.totalRecordCount}"
			each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}"
			ajax="false"></div>
		</c:if>
	</div>

	<br><br>

	<a class="link_submit opendialog">添加</span></a>
	

</div>


<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script type="text/javascript">
	$(function(){
		$('.opendialog').click(function(){
			var id= $(this).attr('data');
			$.ajax({
					url:"/function_add.shtml",
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
