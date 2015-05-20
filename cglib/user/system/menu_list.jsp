<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>系统菜单</h3>

	<div class="table">

		
		<c:if test="${empty pageSupport}">
			<font color="red">${msg}</font>
		</c:if>


		<table cellspacing=0>
			<thead>
				<tr>
					<th>ID</th>
					<th>父ID</th>
					<th>菜单名称</th>
					<th>菜单地址</th>
					<th>是否有效</th>
					<th>操作</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="pageSupport" items="${pageSupport.result}" varStatus="status"
				begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}"
				end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr>	
					<td>${pageSupport.id}</td>
					<td>${pageSupport.pid}</td>
					<td>${pageSupport.name}</td>
					<td>${pageSupport.url}</td>
					<td>
					<c:if test="${pageSupport.status eq '0'}"><font color="green">有效</font></c:if>
					<c:if test="${pageSupport.status eq '1'}"><font color="red">无效</font></c:if>
					</td>
					<td>
						<a href="/delMenu.shtml?id=${pageSupport.id}" onclick="return confirm('确定删除?')">删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table><div class="ajaxpage" total="${pageSupport.totalRecordCount}"
		each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}"
		ajax="false"></div>	
	</div>
	<br><br>
	<a class="link_submit opendialog"><span>添加菜单</span></a>	
</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script type="text/javascript">
	$(function(){
		$('.opendialog').click(function(){
			var id= $(this).attr('data');
			$.ajax({
					url:"/systemmenuadd.shtml",
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