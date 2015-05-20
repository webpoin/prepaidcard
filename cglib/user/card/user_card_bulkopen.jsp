<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>批量开卡</h3>

	<form action="/ManyCard.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<font color="red">${msg}</font>
		<cite><span>操作员：</span><input type="text" name="OperNo" check="required"></cite><br>

		<cite><span>上传文件：</span><input type="file"  name="opencard"></cite><br>
		
		<div style="margin-left: 84px;">
			<p>1.>只能导入Excel文件;</p>
			<p>2.>Excel文件第一行第一列名称为"会员卡号";</p>
			<p>3.>第一列名称后是会员号;</p>
			<p>4.>不能隔行填写会员卡号</p>
			<p>5.>数据只允许一列</p>
		</div>
		<br>
		<cite><span></span><input type="submit" value="批量开卡"></cite><br>

	</form>

</div>

<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script>


	$('input[name=opencard]').on('change',function(){
		var $this = $(this);
		if(!/\.xlsx?$/.test($this.val())){
		
			alert('只能选择Excel文件导入！');
			
			$this.val('');
		
		}
	
	})
	
	
	
	$('form').on('submit',function(){
	
		if(!$(this).find('input[name=opencard]').val()){
		
			alert('请选择要导入的文件');
			return false;
		
		}
	
	})


</script>
