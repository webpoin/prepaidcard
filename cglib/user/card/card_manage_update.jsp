<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="true" /></jsp:include>
<div class="content">
	<h3>会员资料修改</h3>
	
	<form action="/updateMember.shtml" method="post" class="fukrm js-form-note"  enctype="multipart/form-data">
		
		<input type="hidden" name = "id" value = "${ memberid }">

			<cite><span>会员卡号：</span><input type="text" name="cardno" value="${memberCard.cardno}" check=""></cite><br>
			<cite><span>姓名：</span><input type="text" name="name" value="${memberCard.name}" check=""></cite><br>
		
		<!-- <cite><span>会员卡级别：</span><select name="cardtype">
					<option value="1" <c:if test="${memberCard.cardtype eq '1'}">selected="selected"</c:if>>普通</option>
					<option value="2" <c:if test="${memberCard.cardtype eq '2'}">selected="selected"</c:if>>银卡</option>
					<option value="3" <c:if test="${memberCard.cardtype eq '3'}">selected="selected"</c:if>>金卡</option>
					<option value="4" <c:if test="${memberCard.cardtype eq '4'}">selected="selected"</c:if>>白金卡</option>
					<option value="5" <c:if test="${memberCard.cardtype eq '5'}">selected="selected"</c:if>>砖石</option>
				</select>
			</cite><br> -->
		
		
			<cite><span>身份证号码：</span><input type="text" name="idcard" check="" value="${memberCard.idcard}"></cite><br>
		
			<cite><span>短信服务：</span> <select name="message">
					<option value="0" <c:if test="${memberCard.message eq 0}">selected="selected"</c:if> >开通</option>
					<option value="1" <c:if test="${memberCard.message eq 1}"> selected="selected"</c:if>>未开通</option>
				</select>
			</cite><br>
		
			<cite><span>邮件：</span><input type="text" name="email" value="${memberCard.email}" check=""></cite><br>
			<cite><span>手机号码：</span><input type="text" name="mobile"  value="${memberCard.mobile}" check=""></cite><br>
			<cite><span>通讯地址：</span><input type="text" name="address"  value="${memberCard.address}" check=""></cite><br>
			<cite><span>所属商户：</span><input type="text" name="merchantno" value="${memberCard.merchantno}" disabled="disabled" ></cite><br>
				

			<br>
			<input type="submit" value="修改" style="margin-left: 84px;">


		</table>
	</form>

</div>





<jsp:include page="/cglib/foot.jsp" flush="true"/>