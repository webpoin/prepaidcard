<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>


<div class="content">
	<h3>会员卡批量充值导入</h3>


	<form action="/RechargeImport.shtml" method="post" class="fukrm fukrm-check"  enctype="multipart/form-data">
		
		<font color="red">${msg}</font>

		<cite><span>冲销标志：</span>
			<select name="BackoutFlag" style="width: 200px;">
				<option value="0">正常</option>
				<option value="1">冲正</option>
			</select>
		</cite><br>
		
		<cite><span style="display:inline-block; margin-top: 10px;">上传表格：</span><input type="file"  name="rechargefile" style="margin-top: 10px;"></cite>

		<div style="margin-left: 84px;">
			<p>1.>只能导入Excel文件;</p>
			<p>2.>Excel文件第一行第一列名称为"会员卡号",第一行第二列为"充值金额";</p>
			<p>3.>第一列名称后是卡号,第二列名称后为需要充值的金额数量;</p>
			<p>4.>不能隔行填写会员卡号;</p>
			<p>5.>只能是两列数据,一列为卡号，一列为充值金额。</p>
		</div>

		<br>
		<cite><span></span><input type="submit" value="批量导入" ></cite>

	
	</form>
	
</div>
	
<jsp:include page="/cglib/foot.jsp" flush="true"/>

<script>


	$('input[name=rechargefile]').on('change',function(){
		var $this = $(this);
		if(!/\.xlsx?$/.test($this.val())){
			alert('只能选择Excel文件导入！');
			$this.val('');
		}
	
	})
	

	$('form').on('submit',function(){
		if(!$(this).find('input[name=rechargefile]').val()){
		
			alert('请选择要导入的文件');
			return false;
		
		}
	
	})


</script>
