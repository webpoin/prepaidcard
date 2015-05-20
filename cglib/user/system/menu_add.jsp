<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>


<style>
	.dialog_menuadd{padding-right: 50px;}
	.dialog_menuadd:after{display: none;}
	.dialog_menuadd cite{text-align: left;}
	.dialog_menuadd .fukrm_item i.form-note-success{position: absolute;}
</style>

	<form action="/menuadd.shtml" method="post" class="fukrm  dialog_menuadd"  enctype="multipart/form-data">
		<br>
		<cite><span>父菜单：</span>
			<label>
				<select name="id">     
				    <option value="0">顶级菜单</option>
					<c:forEach var="list" items="${list}" varStatus="status">
					<option value="${list.id}">${list.name}</option>
					</c:forEach>
				</select>
			</label>
		</cite><br>

		<cite><span>菜单名称：</span><label><input type="text" name="menuName" check="required,name" placeholder="请输入菜单名称"></label><i></i></cite><br>
		<cite><span>菜单地址：</span><label><input type="text" name="menuUrl" check="" placeholder="请输入地址"></label><i></i></cite>

		<br><br>
		<cite><input type="submit" value="确认" style="margin-left: 100px;"></cite>
				
	</form>
	
	
	<script>
	
	dialog.dialog("option","title", "添加菜单");
	$('.dialog_menuadd').fukrm();
	
	$('.dialog_menuadd').ajaxForm({
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



