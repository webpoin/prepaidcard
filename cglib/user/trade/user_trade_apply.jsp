<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>商户额度申请</h3>

	<form action="/lines_apply.shtml" method="post" class="fukrm fukrm-check js-form-note">
		
		
		<cite><span>发卡主体：</span><input type="text" name="company" value="深圳安子便民支付科技有限公司" disabled="disabled" style="width:200px"></cite><br>
		<cite><span>账户手机号：</span><input type="text" name="mobile" check="required,phone" placeholder="请输入手机号"></cite><br>			
		<cite><span>申请额度：</span><input type="text" name="applymoney" check="required,number" placeholder="请输入金额"></cite><br>

		<br>
		<cite><span></span><input type="submit" value="申请" ></cite>
		
	</form>
	
</div>


<jsp:include page="/cglib/foot.jsp" flush="true"/>