<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.jmsht.pay.EpaylinksNotify" %>
<%@ page import="sun.misc.BASE64Decoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


//密钥
String key = "857e6g8y51b5k365f7v954s50u24h14w";

//创建支付应答对象
EpaylinksNotify notify = new EpaylinksNotify(request, response);
notify.setKey(key);

//验证签名
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
  /*	
	if( "1".equals(pay_result)) {
		//处理业务开始
		
		//后台打印异步通知信息
		
		System.out.println("获取异步通知信息成功!");
		System.out.println("<br/>success<br/><br/>");
		System.out.println("商家ID："+partner);
		System.out.println("商家系统订单号："+out_trade_no);
		System.out.println("网关系统支付号："+pay_no);
		System.out.println("订单金额："+amount);
		System.out.println("支付结果（1表示成功）："+pay_result);
		System.out.println("支付时间："+pay_time);
		System.out.println("清算日期："+sett_date);
		System.out.println("清算时间："+sett_time);
		System.out.println("订单备注："+memo);
		System.out.println("签名算法："+sign_type);
		System.out.println("签名："+sign);
		
		//页面响应打印异步通知信息
		out.println("<br/>success<br/><br/>");	
		out.println("商家ID："+partner+"<br/>");
		out.println("商家系统订单号："+out_trade_no+"<br/>");
		out.println("网关系统支付号："+pay_no+"<br/>");
		out.println("订单金额："+amount+"<br/>");
		out.println("支付结果（1表示成功）："+pay_result+"<br/>");
		out.println("支付时间："+pay_time+"<br/>");
		out.println("清算日期："+sett_date+"<br/>");
		out.println("清算时间："+sett_time+"<br/>");
		out.println("订单备注："+memo+"<br/>");
		out.println("签名算法："+sign_type+"<br/>");
		out.println("签名："+sign+"<br/>");
		
		//注意交易单不要重复处理
		//注意判断返回金额
		
		//处理业务完毕

	} else {
		//当做不成功处理
		System.out.println("获取异步通知失败！");
		System.out.println("商家系统订单号："+out_trade_no);
		System.out.println("支付结果（0表示未支付，2表示支付失败）："+pay_result);
		
		//页面响应打印异步通知信息
		out.println("获取异步通知失败！");
		out.println("商家系统订单号："+out_trade_no);
		out.println("支付结果（0表示未支付，2表示支付失败）："+pay_result);
	}
  */
	//返回Success网关服务器，表示已经收到后台通知，不必再次发送通知
	notify.responseToGateway("success");
	
} else {
	System.out.println("验证签名失败");
	out.println("验证签名失败");
}
//获取debug信息,建议把debug信息写入日志，方便定位问题
String debugMsg = notify.getDebugMsg();
System.out.println("debugMsg:" + debugMsg);
%>

