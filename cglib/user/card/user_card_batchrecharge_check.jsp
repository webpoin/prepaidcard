<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header_logined.jsp" flush="true"/>

	<div class="content">
		<h3>会员卡批量充值审核</h3>

		<form action="" class="js-form form_table js-form-note">
		
			<cite><span>充值时间：</span><input type="text" name="StartDate" class="datepicker" style="width:80px;"></cite>
			<span style="width:auto;">至</span>
			<cite><input type="text" name="EndDate" class="datepicker" style="width:80px;"></cite>
			<cite><span>充值状态：</span><select id="" name="" disabled="disabled">
					<option value="0">全部</option> 
					<option value="1">已充值 </option> 
					<option value="2">未充值  </option> 
				</select>
			</cite>
			<cite><span>导入批次号：</span><input type="text" name="operNo" check=""></cite>
			<cite><span>&nbsp;</span><input type="submit" value="充值审核" /></cite>
		
		</form>
			
			
		<!--				-->
		<!--			<div class="autowide">-->
		<!--				<table cellspacing=0>-->
		<!--					<thead>-->
		<!--						-->
		<!--						<tr>-->
		<!--						    <th>序列号</th>-->
		<!--							<th>商户编号</th>-->
		<!--							<th>商户名称</th>-->
		<!--							<th>商户地址</th>-->
		<!--							<th>交易终端号</th>-->
		<!--							<th>交易序列号</th>-->
		<!--							<th>会员卡帐号</th>-->
		<!--							<th>交易类型</th>-->
		<!--							<th>交易金额</th>-->
		<!--							<th>交易后余额</th>-->
		<!--							<th>交易时间</th>-->
		<!--						</tr>-->
		<!--					</thead>-->
		<!--					-->
		<!---->
		<!--					<tbody>-->
		<!--					-->
		<!--						<tr>	-->
		<!--							<td>${xmlList.PackId }</td>-->
		<!--							<td>${xmlList.MerchantNum }</td>-->
		<!--							<td>${xmlList.MerchantName }</td>-->
		<!--							<td>${xmlList.MerchantAddr }</td>-->
		<!--							<td>${xmlList.TerminalNo }</td>-->
		<!--							<td>${xmlList.SeqNo }</td>-->
		<!--							<td>${xmlList.CardNum }</td>-->
		<!--							<td>${xmlList.TradeType }</td>-->
		<!--							<td>${xmlList.Amount }</td>-->
		<!--							<td>${xmlList.Balance }</td>-->
		<!--							<td>${xmlList.TradeTime }</td>-->
		<!--						</tr>	-->
		<!--					</tbody>-->
		<!---->
		<!--					<tfoot>-->
		<!--					    <tr> -->
		<!--					      	<td colspan="17">-->
		<!--					      		<a href="#">首页</a>-->
		<!--								<a href="#">上一页</a>-->
		<!--								<a href="#">下一页</a>-->
		<!--								<a href="#">尾页</a>-->
		<!--								<form class="dib">-->
		<!--									<input type="text"/>-->
		<!--									<input type="submit" value="跳转"/>-->
		<!--								</form>-->
		<!--								<cite>-->
		<!--									<span>当前页：1/8 - 共310条记录 </span>-->
		<!--									<span class="table_tfoot_dis">(总共记录：347条 )</span>-->
		<!--								</cite>-->
		<!--								-->
		<!--							</td> -->
		<!--					    </tr> -->
		<!--					</tfoot>-->
		<!--				</table>-->
		<!--			</div>-->
	
	</div>





<jsp:include page="/cglib/footer_user.jsp" flush="true"/>