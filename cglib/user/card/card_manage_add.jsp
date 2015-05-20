<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
	.dialog_cardadd{width:650px;}
	.dialog_cardadd:after{display: none;}
	.dialog_cardadd cite{text-align: left;}
	.dialog_cardadd .fukrm_item i.form-note-success{display: inline-block;}
	.dialog_cardadd	.fukrm_item i.form-note-warn{display: inline-block; }
	.dialog_cardadd	.fukrm_item i.form-note-error{display: inline-block;  }

</style>
	<form action="/vipadd.shtml" method="post" class="fukrm js-form-note dialog_cardadd"  enctype="multipart/form-data">
		<br>
		<cite><span>会员卡号：</span><input type="text" name="cardno" check="required"></cite><br>
		<cite><span>姓名：</span><input type="text" name="name" check="required"></cite><br>
		<cite><span>身份证号码：</span><input type="text" name="idcard" check="required,IDCard"></cite><br>
		<cite><span>通讯地址：</span><input type="text" name="address" check="required"></cite><br>

		<cite><span>手机号码：</span><input type="text" name="mobile" check="required"></cite><br>
		<cite><span>短信服务：</span> <select name="message" check="required">
				<option value="">请选择</option>
				<option value="0">开通</option>
				<option value="1">不开通</option>
			</select>
		</cite><br>

		<cite><span>邮件：</span><input type="text" name="email" check="required,email"></cite><br>
		<br>
		<cite><span></span><input type="submit" value="添加"></cite>
		<br><br>
	</form>

	<script>
	
	dialog.dialog("option","title", "添加会员");
	$('.dialog_cardadd').fukrm();
	
	$('.js-form-note').on('submit',function(){
		var form = $(this);
		var check = [];
		$(this).find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
			var the = $(this);
			if(!the.closest('cite').children('i').is('.form-note-success') && !the.formCheck() ){
				check.push(the);
			}

		});

		if(check.length>0){
			check[0].focus();
			return false;
		}
	
		
		// 发送手机短信
		$.ajax({
			type: "POST",
			dataType:'json',
			url: form.attr('action'),
			data: form.serialize(),
			success: function(data) {
			
				if(data.status && data.status === '200'){
					
					if(data.message){alert(data.message);}
					if(data.url){
						window.location.href = data.url 
					}else{
						location.reload();
					}
					
				}else{
					alert(data.message);
					loading.hide();
				}
			},
			error:function(){

			}
		});
		
		
		loading.show();
		return false;
		
	});
	</script>


	