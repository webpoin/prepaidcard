<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
	.dialog_Roleadd{width:650px;}
	.dialog_Roleadd:after{display: none;}
	.dialog_Roleadd cite{text-align: left;}

</style>

	<form action="/addusertoauth.shtml" method="post" class="fukrm dialog_Roleadd"  enctype="multipart/form-data" style="text-align: left;">
	<br><br>
		<cite>
			<span>用户账号：</span>
			<input type="text" name="mobile" check="required,phone" placeholder="请输入用户你有效手机号">
		</cite>
		<cite>
			<span>用户密码：</span>
			<input type="password" name="password" check="required" placeholder="请输入用户密码">
		</cite>
		<cite>
			<span>真实姓名：</span>
			<input type="text" name="username" check="required" placeholder="请输入真实姓名">
		</cite>

		<cite>
			<span>选择角色：</span>
		    <select name="authid"> 
				<c:forEach var="RoleNamelist" items="${RoleNamelist}" varStatus="status">
				<option value="${RoleNamelist.id}">${RoleNamelist.name}</option>
				</c:forEach>
			</select>
		</cite>	
		<br>
		<br>


		<input type="submit" value="提交" style="margin-left: 100px;">
	</form>
<script>
	
	dialog.dialog("option","title", "添加菜单");
	$('.dialog_Roleadd').fukrm();



	// 异步提交文件
	$('.dialog_Roleadd').ajaxForm({
		type:'POST',
		dataType:'json',
		beforeSubmit:function(data,form){
			var check = [];
			form.find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
				var the = $(this);
				if(!the.siblings('i').is('.form-note-success') && !the.formCheck() ){
					check.push(the);
				}

			});

			if(check.length>0){
				check[0].focus();
				return false;
			}

			loading.show();
		},
		success: function(data) {

			loading.hide();
			if(data.status && data.status === '200'){
				if(data.url){
					window.location.href = data.url;
				}else{
					location.reload();
				}
			}else{
				alert(data.message);
			}

		}

	});
	
	
	</script>

	