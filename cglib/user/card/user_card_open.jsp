<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>会员卡开卡</h3>
	<form action="/user_card_open.shtml" method="post" class="fukrm  js-form-note"  enctype="multipart/form-data">
		<input type="hidden" name="OperNo">
		<cite><span>会员卡激活：</span><input type="text" name="CardNo" check="required,number" placeholder="请输入会员卡号"></cite>
		
		<cite><input type="submit" value="开卡" ></cite>
	</form>


</div>


<jsp:include page="/cglib/foot.jsp" flush="true"/>