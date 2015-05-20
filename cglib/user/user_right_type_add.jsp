<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
	.dialog_roleadd{width:750px;}
	.dialog_roleadd:after{display: none;}
	.dialog_roleadd cite{text-align: left;}

</style>
	<form action="/role_add.shtml" method="post" class="fukrm  dialog_roleadd"  enctype="multipart/form-data">
	<br>

		<cite><span>角色名称：</span><input type="text" name="roleName" check="required" placeholder="请输入权限名称"></cite>

		<cite><span>角色描述：</span><textarea name="roleDesc" check="required" cols="50" rows="4" placeholder="请输入权限描述"></textarea></cite>
				 
		<cite>
			<span class="checkboxtree_tle">选择功能：</span>
			<div class="checkboxtree_box">
				<div class="checkboxtree" id="checkboxtree"></div>
			</div>
		</cite>
	
		<br><br>
		<input type="submit" value="提交" style="margin-left: 100px;">

	</form>
			
<script>

	
	dialog.dialog("option","title", "添加角色");
	$('.dialog_roleadd').fukrm();
	
	$('.dialog_roleadd').ajaxForm({
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
	
	
$(function(){
	var tree3 = [];
		
		<c:forEach var="roleadd" items="${listRoleadd}" varStatus="status">
			tree3.push({id:${roleadd.id},pid:${roleadd.pid},name:'${roleadd.name}',url:'${roleadd.url}',state:'${roleadd.state}'});
		</c:forEach>
	var treeval = (function(tree,pid){

		var res = [];
		var nch = true;

		for (var i in tree) {
			if (tree[i].pid == pid) {
				res.push('<label><input type="checkbox" name="menberCard" value="'+tree[i].id+'">'+tree[i].name+'</label>');
				res.push(arguments.callee(tree, tree[i].id));
				nch = false;
			}
		}
		return (pid === 0 || nch) ? res.join('\n') : '<cite><i>+</i>' + res.join('\n') + '</cite>\n';

	})(tree3,0);

	document.getElementById('checkboxtree').innerHTML = treeval;
	
	$('.checkboxtree').on('click', 'label', function(e) {

		var $this = $(this);

		// 取消选中时-->
		// 遍历子选项，全部不选中;
		// 遍历同级 [如果全不选中->取消父级选中,递归袓辈;有选中->中断循环]
		if ($this.children('input').prop('checked')) {
			$this.next('cite').find('input').prop('checked', true);
			$this.parents('cite').prev('label').children('input').prop('checked', true);
			
			
			// 选中时-->
			// 遍历子选项，全部选择;
			// 遍历全部父级，全部选择
		} else {
			$this.next('cite').find('input').prop('checked', false);
		}

	}).on('click', 'i', function() {
		var $this = $(this);

		if ($this.html() === '+') {
			$this.html('-').parent('cite').children().not('i').css('display', 'block');

		} else {
			$this.html('+').parent('cite').children().not('i').css('display', 'none');
		}
	});

})
</script>