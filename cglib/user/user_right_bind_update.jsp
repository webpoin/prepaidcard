<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>修改权限功能菜单</h3>

	<form action="/update_user.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
		
		<input type="hidden" name = "userid" value = "${userid}">
		<cite>
			<span>用户账号：</span>
			<label>
				<input type="text" name="mobile" value="${usersid.mobile }" check="required" placeholder="请输入用户账号" >
			</label>
		</cite>

		<br>
		<cite>
			<span>用户密码：</span>
			<label>
				<input type="password" name="password"  value="${usersid.password }" check="required" placeholder="请输入用户密码" >
			</label>
		</cite>

		<br>
		<cite>
			<span>真实姓名：</span>
			<label>
				<input type="text" name="username" value="${usersid.username }" check="required" placeholder="请输入真实姓名" >
			</label>
		</cite>

		<br>
		<cite>
			<span>选择角色：</span>
			<label>
			    <select name="id">
					<c:forEach var="allRoleList" items="${allRoleList}" varStatus="status">
						<option value="${allRoleList.id}" <c:if test="${allRoleList.state}"> selected="selected" </c:if>>${allRoleList.name}</option>
					</c:forEach>
				</select>
			</label>
		</cite>	

		<br><br>

		<input type="submit" value="提交" style="margin-left: 70px;">

				
	</form>
</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>