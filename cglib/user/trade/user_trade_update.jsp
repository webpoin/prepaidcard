<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>修改商户</h3>
	
	<form action="/updateMerchant.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
	

		<input type="hidden" name="id" value="${merchantid}">

		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" ></cite><br>
		<cite><span>通讯地址：</span><input type="text" name="address" value="${merchant.address }"></cite><br>
		<!-- <cite><span>商户编号：</span><input type="text" name="merchantno" value="${merchant.merchantno }" disabled="disabled"></cite><br>	 -->
	
	    <cite><span>商户名称：</span><input type="text" name="name" value="${merchant.name }"></cite><br>
		<cite><span>商户简称：</span><input type="text" name="abbreviation" value="${merchant.abbreviation }"></cite><br>
		
		
		<cite><span>渠道类型：</span><input type="text" name="trenchtype" value="${merchant.trenchtype }"></cite><br>
		<cite><span>行业类型：</span><input type="text" name="businesstype" value="${merchant.businesstype }"></cite><br>
		
		<cite><span>法人代表：</span><input type="text" name="corporationname" value="${merchant.corporationname }"></cite><br>
		<cite><span>法人身份证：</span><input type="text" name="idcard" value="${merchant.idcard }"></cite><br>
		
		
		<cite><span>邮政编码：</span><input type="text" name="zipcode" value="${merchant.zipcode }"></cite><br>
		<cite><span>电子邮件：</span><input type="text" name="email" value="${merchant.email }"></cite><br>	
		
		
		<cite><span>手机号码：</span><input type="text" name="mobile" value="${merchant.mobile }"></cite><br>

		<br>
		<cite><span></span><input type="submit" value="修改"></cite>

	</form>

</div>




<jsp:include page="/cglib/foot.jsp" flush="true"/>