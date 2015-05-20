<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header_logined.jsp" flush="true"/>

<div class="content">
	<h3>商户资料管理</h3>
	

	<form action="#" class="js-form form_table js-form-note">

		<table>
			<tr>
				<td><cite><span>发卡主体：</span><label>
					<select name="">
						<option value="0">深圳安子便民支付科技有限公司</option>
					</select>
				</label></cite></td>
				<td><cite><span>商户编号：</span><label><input type="text" name="" check=""></label><i></i></cite></td>
			</tr>
			<tr>
				<td><cite><span>商户状态：</span><label>
					<select name="" >
						<option value="">全部</option>
						<option value="00">正常</option>
						<option value="99">禁用</option>
					</select>
				</label></cite></td>
			<td><cite><span>&nbsp;</span><input type="submit" value="查询" style="margin:0;background: #ee2323;"><!--	<input type="submit" value="导出" style="margin:0 0 0 30px">--></cite></td>
			</tr>
		
		</table>
	</form>

	<div class="table">
		<table cellspacing=0 >

			<thead>
				<tr>
					<th>选择</th>
					<th>商户状态</th>
					<th>商户余额</th>
					<th>商户编号</th>
					<th>商户名称</th>
					<th>商户简称</th>
					<th>渠道类型</th>
					<th>商户类型</th>
					<th>行业类型</th>
					<th>机构号</th>
					<th>法人代表</th>
					<th>法人身份证号</th>
					<th>联系人</th>
					<th>联系电话</th>
					<th>手机号码</th>
					<th>传真号码</th>
					<th>通讯地址</th>
					<th>邮政编码</th>
					<th>电子邮箱</th>
					<th>录入人员</th>
					<th>录入时间</th>
					<th>修改人员</th>
					<th>修改时间</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><input type="radio" name="selRow" value="001" ></td>
					<td></td>
					<td>0.00</td>
					<td>001</td>
					<td>汇众幸福家</td>
					<td>测试</td>
					<td>单店</td>
					<td>其他</td>
					<td>其他</td>
					<td></td>
					<td>李红</td>
					<td>62210219800219062X</td>
					<td>王兵</td>
					<td></td>
					<td>123456789</td>
					<td></td>
					<td>酒泉洪洋广场</td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-08-22 17:27:44</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:27:25</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="002" ></td>
					<td></td>
					<td>0.00</td>
					<td>002</td>
					<td>静上花开</td>
					<td>测试</td>
					<td>单店</td>
					<td>其他</td>
					<td>其他</td>
					<td></td>
					<td>索静</td>
					<td>62210219850325062X</td>
					<td>索静</td>
					<td></td>
					<td>13830157058</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-08-23 10:13:50</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:27:15</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="01" ></td>
					<td></td>
					<td>0.00</td>
					<td>01</td>
					<td>酒泉金鼎物资有限公司</td>
					<td>测试</td>
					<td>单店</td>
					<td>购物</td>
					<td>工厂</td>
					<td></td>
					<td>武惠玲</td>
					<td>622102197211127923</td>
					<td>武惠玲</td>
					<td>13830746922</td>
					<td>13830746922</td>
					<td></td>
					<td>酒泉市肃州区酒金西路太阳岛水岸人家</td>
					<td>735000</td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-08-22 10:22:19</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:27:06</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="66AZB0000" ></td>
					<td></td>
					<td>0.00</td>
					<td>66AZB0000</td>
					<td>深圳安子便民支付科技有限公司沉淀资金账户</td>
					<td>沉淀资金账户</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>sys</td>
					<td>2014-08-07 16:40:40</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="A0001" ></td>
					<td></td>
					<td>0.00</td>
					<td>A0001</td>
					<td>张俪</td>
					<td>测试</td>
					<td>
					连锁店
					</td>
					<td>购物</td>
					<td>其他</td>
					<td></td>
					<td>张俪</td>
					<td>62210219800219062X</td>
					<td>张俪</td>
					<td>13993787895</td>
					<td>13993787895</td>
					<td></td>
					<td>甘肃省酒泉市东环南路16号</td>
					<td>735000</td>
					<td>379816638@QQ.com</td>
					<td>SZBA042</td>
					<td>2014-08-22 15:36:18</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:27:42</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="BFX001" ></td>
					<td></td>
					<td>0.02</td>
					<td>BFX001</td>
					<td>百福香生物食品科技有限公司</td>
					<td>百福香</td>
					<td>单店</td>
					<td>其他</td>
					<td>饮食</td>
					<td></td>
					<td>付林</td>
					<td>622102197309034338</td>
					<td>付林</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-09-11 13:10:24</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="BLDXC001" ></td>
					<td></td>
					<td>4286.76</td>
					<td>BLDXC001</td>
					<td>肃州区金奥恒丰西餐面包店</td>
					<td>巴厘岛西餐</td>
					<td>单店</td>
					<td>餐饮</td>
					<td>饮食</td>
					<td></td>
					<td>蔡淑清</td>
					<td>622102197811051424</td>
					<td>蔡淑清</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-10-27 14:40:34</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="HRSM001" ></td>
					<td></td>
					<td>0.01</td>
					<td>HRSM001</td>
					<td>泓瑞商贸有限公司</td>
					<td>泓瑞商贸</td>
					<td>单店</td>
					<td>其他</td>
					<td>其他</td>
					<td></td>
					<td>王照红</td>
					<td>622102196806031221</td>
					<td>王照红</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-09-11 13:12:08</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:25:40</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="HYZS001" ></td>
					<td></td>
					<td>68003.01</td>
					<td>HYZS001</td>
					<td>兰雅装饰工程有限公司</td>
					<td>兰雅装饰</td>
					<td>单店</td>
					<td>其他</td>
					<td>其他</td>
					<td></td>
					<td>薛贵德</td>
					<td>62210219820929791X</td>
					<td>薛贵德</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-09-11 10:32:15</td>
					<td>SZBA042</td>
					<td>2014-09-11 10:32:50</td>
				</tr>
				<tr>
					<td><input type="radio" name="selRow" value="HZ001" ></td>
					<td></td>
					<td>1969999.00</td>
					<td>HZ001</td>
					<td>汇众联合营销服务有限公司</td>
					<td>汇众营销</td>
					<td>单店</td>
					<td>其他</td>
					<td>其他</td>
					<td></td>
					<td>薛贵德</td>
					<td>62210219820929791X</td>
					<td>薛贵德</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>SZBA042</td>
					<td>2014-09-11 09:39:35</td>
					<td>SZBA042</td>
					<td>2014-09-11 13:26:26</td>
				</tr>



			</tbody>

			<tfoot>
			    <tr> 
			      	<td colspan="22">
			      		<a href="#">首页</a>
						<a href="#">上一页</a>
						<a href="#">下一页</a>
						<a href="#">尾页</a>
						<form class="dib">
							<input type="text"/>
							<input type="submit" value="跳转"/>
						</form>
					</td> 
			    </tr> 
			</tfoot>

		</table>

	</div>
	
</div>





<jsp:include page="/cglib/footer_user.jsp" flush="true"/>