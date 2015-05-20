<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="sun.misc.BASE64Decoder" %>
<%@ page import="com.jmsht.pay.EpaylinksNotify"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 

//支付结果页面转跳即时通知示例程序
//商户密钥
String key = "857e6g8y51b5k365f7v954s50u24h14w";

//创建支付应答对象
EpaylinksNotify notify = new EpaylinksNotify(request, response);
//设置商户密钥
notify.setKey(key);

//验证返回结果签名
if(notify.verifySign()) {

	String partner = notify.getParameter("partner");
	String out_trade_no = notify.getParameter("out_trade_no");
	String pay_no = notify.getParameter("pay_no");
	String amount = notify.getParameter("amount");
	String pay_result = notify.getParameter("pay_result");
	String pay_time = notify.getParameter("pay_time");
	String sett_date = notify.getParameter("sett_date");
	String sett_time = notify.getParameter("sett_time");
	String base64_memo = notify.getParameter("base64_memo");
	String sign_type = notify.getParameter("sign_type");
	String sign = notify.getParameter("sign");
	
	BASE64Decoder decoder = new BASE64Decoder();
	String memo = new String(decoder.decodeBuffer(base64_memo)).toString();
	
	if( "1".equals(pay_result) ) {

		//处理业务开始
		out.print("</br>支付成功!</br></br>");	
		out.print("商家编号："+partner+"</br>");
		out.print("商家系统订单号："+out_trade_no+"</br>");
		out.print("网关系统支付号："+pay_no+"</br>");
		out.print("订单金额："+amount+"</br>");
		out.print("支付结果（1表示成功）："+pay_result+"</br>");
		out.print("支付时间："+pay_time+"<br/>");
		out.print("清算日期："+sett_date+"<br/>");
		out.print("清算时间："+sett_time+"<br/>");
		out.print("订单备注："+memo+"</br>");
		out.print("签名类型："+sign_type+"</br>");
		out.print("签名："+sign+"</br>");
		
		System.out.println("</br>支付成功!</br></br>");
		System.out.println("商家号："+partner+"</br>");
		System.out.println("商家系统订单号："+out_trade_no+"</br>");
		System.out.println("网关系统支付号："+pay_no+"</br>");
		System.out.println("订单金额："+amount+"</br>");
		System.out.println("支付结果（1表示成功）："+pay_result+"</br>");
		System.out.println("支付时间："+pay_time);
		System.out.println("清算日期："+sett_date);
		System.out.println("清算时间："+sett_time);
		System.out.println("订单备注："+memo+"</br>");
		System.out.println("签名类型："+sign_type+"</br>");
		System.out.println("签名："+sign+"</br>");
		
		
		//注意交易单不要重复处理
		//注意判断返回金额
		
		//处理业务完毕
	        
	} else {
		//当做不成功处理
		out.print("支付失败！</br></br>");
		out.print("商家系统订单号："+out_trade_no+"</br>");
		out.print("网关系统支付号："+pay_no+"</br>");
		out.print("支付结果（0表示未支付，2表示支付失败）："+pay_result+"</br>");
		
		System.out.println("支付失败！</br></br>");
		System.out.println("商家系统订单号："+out_trade_no+"</br>");
		System.out.println("网关系统支付号："+pay_no+"</br>");
		System.out.println("支付结果（0表示未支付，2表示支付失败）："+pay_result+"</br>");
	}
	
} else {

	out.println("验证签名失败");
	System.out.println("验证签名失败");
}
//获取调试信息
String debugMsg = notify.getDebugMsg();
System.out.println("debugMsg:" + debugMsg);
%>
