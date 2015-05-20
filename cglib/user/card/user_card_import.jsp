<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>导卡</h3>

	<form action="/saveImportVip.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		
		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" style="width:200px"></cite><br>
		
		<cite><span>卡类型：</span><select name="cardtype">
				<option value="1">普通</option>
				<option value="2">银卡</option>
				<option value="3">金卡</option>
				<option value="4">白金卡</option>
				<option value="5">砖石</option>
			</select>
		</cite><br>
				
		<cite><span>上传表格：</span><input type="file" name="cardfile" value=""></cite>
		<div style="margin-left: 84px;">
			<p>1.>只能导入Excel文件;</p>
			<p>2.>Excel文件第一行第一列名称为"会员卡号";</p>
			<p>3.>从第二行第一列除名称"会员卡号"外开始是会员卡号！只排第一列。</p>
			<p>4.>不能隔行填写会员卡号</p>
		</div>
		
		<br>
		<cite><span></span><input type="submit" value="导入"></cite>			
		<font color="red">${msg}</font>
	</form>

</div>
<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script>


	$('input[name=cardfile]').on('change',function(){
		var $this = $(this);
		if(!/\.xlsx?$/.test($this.val())){
			alert('只能选择Excel文件导入！');
			$this.val('');
		}
	
	})
	
	
	
	$('form').on('submit',function(){
	
		if(!$(this).find('input[name=cardfile]').val()){
			alert('请选择要导入的文件');
			return false;
		}
	
	})


</script>