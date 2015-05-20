<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<jsp:include page="/cglib/validation.jsp"/>
<div class="content">
	<h3>支付订单</h3>

	<form action="/role_add.shtml" method="post" class="fukrm"  enctype="multipart/form-data">
		
		<cite><span>商户编号：</span><input type="text" name="roleName" check="required" placeholder="请输入您的商户编号"></cite><br>
		<cite><span>支付金额：</span><input type="text" name="roleName" check="required" placeholder="请输入您的支付金额"></cite><br>
		<cite><span>货币类型：</span>
			<label><input type="radio" name="" value="" checked="checked">人民币</label>
			<label><input type="radio" name="" value="">港币</label>
			<label><input type="radio" name="" value="">美元</label>
		</cite><br>
		<cite><span>商品名称：</span><input type="text" name="roleName" check="required" placeholder="请输入商品名称"></cite>
		
		<br><br>
		<cite><input type="submit" value="提交"></cite>
	</form>
</div>

<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script>


	$('fukrm').on('submit',function(){

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
					if(data.url){
						window.location.href = data.url 
					}else{
						location.reload();
					}
				}else{
					alert(data.message);
				}
			},
			error:function(){

			}
		});

		return false;
		
	
	});

	// 等待
	// dialog.html('<img src="/images/dialog_wait.png"><p>您的订单正在等待支付中......</p><a class="btn">重新支付</a><a class="btn_close" href="#">关闭页面</a>').dialog('open');

	// 成功
	// dialog.html('<img src="/images/dialog_success.png"><p>恭喜您！您的订单已支付成功！</p><a class="btn">继续支付</a><a class="btn btn_close" href="#">关闭页面</a>').dialog('open');

	// 失败
	// dialog.html('<img src="/images/dialog_faile.png"><p>对不起！您的订单支付失败！</p><a class="btn">重新支付</a><a class="btn btn_close" href="#">关闭页面</a>').dialog('open');



	dialog.on('click','a.btn',function(){

		dialog.dialog('close');
		return false;
	});

</script>


