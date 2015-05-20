<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header_logined.jsp" flush="true"/>


<div class="content">
	<h3>会员卡余额查询</h3>


	<form action="#" class="js-form js-form-check">

		<cite><span>帐号：</span><label><input type="text" name="CardNo" check=""></label><i></i></cite>
		<cite><span>密码：</span><label><input type="text" name="Pwd" check=""></label><i></i></cite>
	
		<cite><span>手机号码：</span><label><input type="text" name="MobNo" check=""></label><i></i></cite>
		<cite><span>查询类型：</span><select id="SelectType" name="SelectType">
				<option value="">全部</option>
				<option value="00">余额查询</option>
				<option value="01">积分查询</option>
			</select>
		</cite>
		<cite><span>&nbsp;</span><input type="submit" value="查询"></cite>
			
	</form>


	<div class="table">
		<table cellspacing=0>
			<thead>
				<tr>
				    <th>序列号</th>
					<th>帐号</th>
					<th>余额/积分</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="balancelist" items="${balancelist}">
				<tr>	
					<td>${balancelist.PackId }</td>
					<td>${balancelist.CardNo }</td>
					<td>${balancelist.Balance }</td>
				</tr>
			</c:forEach>	
			</tbody>
		</table>
	</div>

</div>


<jsp:include page="/cglib/foot.jsp" flush="true"/>