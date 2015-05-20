<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>修改权限功能菜单</h3>


	<form action="/updateRoleInfo.shtml" method="post" class="fukrm js-form-note" style="background: none;border:none;"  enctype="multipart/form-data">
		
		<input type="hidden" name = "id" value = "${roleid }">
		<cite>
			<span>权限名称：</span>
			<input type="text" name="roleName" value="${role.name}" check="required" placeholder="请输入权限名称">
		</cite>

		<cite>
			<span>权限描述：</span>
			<textarea name="roleDesc" check="required" cols="80" rows="4">${role.description}</textarea placeholder="请输入权限描述">
		</cite>
		 
		<cite>
			<span>选择功能：</span>
			<div class="checkboxtree_box">
				<div class="checkboxtree" id="checkboxtree"></div>
			</div>
		</cite>
		<br><br>

		<input type="submit" value="提交" style="margin-left: 73px;margin-top: 20px;">
		
		
	</form>
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script>
$(function(){

		var tree2 = [];
		
		<c:forEach var="list" items="${list2}" varStatus="status">
			tree2.push({id:${list.id},pid:${list.pid},name:'${list.name}',url:'${list.url}',state:'${list.state}'});
		</c:forEach>

	var treeval = (function(tree,pid){

		var res = [];
		var html = '';
		var nch = true;

		for (var i in tree) {
			if (tree[i].pid == pid) {
				html = '<label><input type="checkbox" name="menberCard" ';
				if(tree[i].state == 'true'){
					html += 'checked="checked" '
				}
				html += ' value="';
				html += tree[i].id;
				html += '">';
				html += tree[i].name;
				html += '</label>';
				res.push(html);
				res.push(arguments.callee(tree, tree[i].id));
				nch = false;
			}
		}
		return (pid === 0 || nch) ? res.join('\n') : '<cite><i>+</i>' + res.join('\n') + '</cite>\n';

	})(tree2,0);

	document.getElementById('checkboxtree').innerHTML = treeval;
})
</script>