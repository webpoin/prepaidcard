<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/cglib/header_logined.jsp" flush="true"/>

	<div class="content">

		<h3>会员卡绑定</h3>
		
		<form action="#" class="js-form  js-form-note">
			<cite><span>商户编号(必填)：</span><input type="text" name="" check=""></cite><br>
			<cite><span>会员卡号：</span><input type="text" name="" check=""></cite><br>
			<cite><span>会员名称：</span><input type="text" name="" check=""></cite><br>
			<cite><span>绑定状态：</span><select name="bind" >
				<option value="">全部</option>
				<option value="1">未绑定</option>
				<option value="0">已绑定</option>		
			</select></cite><br>
			<cite><span>&nbsp;</span><input type="submit" value="查询" style="margin:0;background:#ee2323;"></cite>
		</form>
		
		<div class="table">
			<table cellspacing=0>
				<thead>
					<tr>
						<th>选择</th>
						<th>会员编号</th>
						<th>会员名称</th>
						<th>会员卡号</th>
						<th>会员卡状态</th>
						<th>发卡子类编号</th>
						<th>证件类型</th>
						<th>证件号码</th>
						<th>手机号码</th>
					</tr>
				</thead>
				<tfoot>
				    <tr> 
				      	<td colspan="9">
				      		<a href="#">首页</a>
							<a href="#">上一页</a>
							<a href="#">下一页</a>
							<a href="#">尾页</a>
							<form class="dib">
								<input type="text"/>
								<input type="submit" value="跳转"/>
							</form>
		<!--								<cite>-->
		<!--									<span>当前页：1/8 - 共310条记录 </span>-->
		<!--									<span class="table_tfoot_dis">(总共记录：347条 )</span>-->
		<!--								</cite>-->
							
						</td> 
				    </tr> 
				</tfoot>
				<tbody>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001136701</td>
						<td>闫丽萍</td>
						<td>0061000000017001</td>
						<td>挂失</td>
						<td></td>
						<td>身份证</td>
						<td>622102198504218323</td>
						<td>13993756018</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001164066</td>
						<td>闫丽萍</td>
						<td>0061000000025848</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td>622102198505218323</td>
						<td>13993756018</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166035</td>
						<td></td>
						<td>0061000000105879</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166057</td>
						<td>试卡</td>
						<td>0061000000095097</td>
						<td>正常</td>
						<td></td>
						<td></td>
						<td></td>
						<td>18693735525</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166062</td>
						<td>陈舜</td>
						<td>0061000000083166</td>
						<td>正常</td>
						<td></td>
						<td></td>
						<td></td>
						<td>15293737529</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166066</td>
						<td>张晶</td>
						<td>0061000000073200</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td>622101197910122930</td>
						<td>15101710886</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166072</td>
						<td>石占斌</td>
						<td>0061000000064386</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td></td>
						<td>18919373069</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166074</td>
						<td>陈雷</td>
						<td>0061000000057531</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td>622102198905020615</td>
						<td>18919371029</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166075</td>
						<td>吴雅琼</td>
						<td>0061000000033614</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td>622301198412029181</td>
						<td>13809376952</td>
					</tr>
					<tr>
						<td><input type="radio" name="group"  value="" ></td>
						<td>00000000000001166076</td>
						<td>张震</td>
						<td>0061000000042650</td>
						<td>正常</td>
						<td></td>
						<td>身份证</td>
						<td>622201196806156314</td>
						<td>13809376597</td>
					</tr>
				</tbody>
		
			</table>
		
		</div>
	
	</div>





<jsp:include page="/cglib/footer_user.jsp" flush="true"/>