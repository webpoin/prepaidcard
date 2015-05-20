<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header_logined.jsp" flush="true"/>
	<div class="content">

		<h3>客服服务记录查询</h3>


		<section class="user_table">
			
			<form action="" class="js-form form_table js-form-note">

				<table>
					<tr>
						<td><cite><span>交易时间：</span><label><input type="text" name="StartDate" class="datepicker" style="width:80px;margin-right:10px;"></label>
						<span style="float:none;">至</span>
						<label><input type="text" name="EndDate" class="datepicker" style="width:80px;margin-right:10px;"></label><i></i></cite></td>
					</tr>
					<tr>
						<td><cite><span>发卡主体：</span><select id="" name="" disabled="disabled">
								<option value="1">
							   		深圳安子便民支付科技有限公司    
								</option>
							</select><i></i></cite></td>	  				
						<td><cite><span>发行类别：</span><select id="" name="" disabled="disabled">
								<option value="1">
							   		
								</option>
							</select><i></i></cite></td>	  				
					</tr>
					<tr>
						<td><cite><span>终端编号：</span><label><input type="text" name="operNo" check=""></label></cite></td>
						 <td><cite><span>服务类型：</span><select id="ser_type" name="ser_type">
								        <option value="00">全部</option>
										<option value="01">开卡</option>
										<option value="06">密码重置</option>
										<option value="08">换卡</option>
										<option value="11">自助挂失</option>
										<option value="13">非自助挂失</option>
										<option value="12">自助解挂</option>
										<option value="14">非自助解挂</option>
										<option value="16">退卡</option>
										<option value="20">其他</option>
									</select>    
									</cite> 
							</td>
					</tr>
					<tr>
						<td><cite><span>会员卡号：</span><label><input type="text" name="operNo" check=""></label><i></i></cite></td>
						<td><cite><span>排序方式：</span><select id="sortType" name="sortType" title="交易时间的排序方式">
										<option value="1">升序</option>
										<option value="2">降序</option>
									</select> 
						<i></i></cite></td>	
							
					</tr>
					<tr>
						<td colspan="2"><cite><span>&nbsp;</span>
							<input type="submit" value="查询" style="margin: 0; background: #ee2323;">

						</cite></td>
					</tr>
					
					
				</table>
			
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
		</section>
	
	</div>





<jsp:include page="/cglib/footer_user.jsp" flush="true"/>