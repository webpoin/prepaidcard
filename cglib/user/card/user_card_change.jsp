<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>

<div class="content">
	<h3>换卡</h3>

	<form action="/user_card_change.shtml" method="post" class="fukrm fukrm-check js-form-note"  enctype="multipart/form-data">
		
		<cite><span>旧帐号：</span><input type="text" name="OrgCardNo" check="required,number" placeholder="请输入旧账号"></cite><br>
		<cite><span>新帐号：</span><input type="text" name="NewCardNo" check="required,number" placeholder="请输入新账号"></cite><br>
		<cite><span>旧账户余额：</span><input type="text" name="Balance" check="required,number" placeholder="请输入旧账号余额"></cite><br>
		
		<br>
		<cite><span></span><input type="submit" value="换卡" ></cite>			
	</form>

</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>