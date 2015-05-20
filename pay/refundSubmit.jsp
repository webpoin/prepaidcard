<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.epaylinks.EpaylinksSubmit"%>
<%@ page import="sun.misc.BASE64Encoder" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//易票联支付网关退款请求示例
	
//交易类型
String trans_type = "refund";
//商户号
String partner = "130";  //130测试商户号只能在219.136.207.190 测试服务器上使用
//商户订单号，退款累计总额不能超过这个订单的金额
String out_trade_no = "1402974788559";
//商户退款单号
String out_refund_no = System.currentTimeMillis()+""; //这是采用系统毫秒数作为订单号样例
//订单总金额
String total_fee = "100";
//退款金额
String refund_fee = "0.01";
//接收易票联支付网关异步通知的URL
String notify_url = "";
//签名类型
String sign_type = "SHA256";

//商户密钥
String key = "857e6g8y51b5k365f7v954s50u24h14w"; //这是130测试商户密钥

//支付请求对象
EpaylinksSubmit epaySubmit = new EpaylinksSubmit(request, response); 
//设置商户密钥
epaySubmit.setKey(key);
//epaySubmit.setGatewayUrl("https://www.epaylinks.cn/paycenter/gateways.do");  //生产服务器
epaySubmit.setGatewayUrl("http://14.23.90.100/paycenter/gateways.do");   //测试服务器 
epaySubmit.setParameter("trans_type",trans_type);

//设置支付请求参数
epaySubmit.setParameter("partner", partner);		        //商户号
epaySubmit.setParameter("out_trade_no", out_trade_no);		//商家订单号
epaySubmit.setParameter("out_refund_no", out_refund_no);	//商家退款单号
epaySubmit.setParameter("total_amount", total_fee);			//订单总金额,以元为单位
epaySubmit.setParameter("refund_amount", refund_fee);		    //退款金额
epaySubmit.setParameter("notify_url", notify_url);		    //接收后台通知的URL
epaySubmit.setParameter("sign_type",sign_type);				//签名类型
 
//获取提交到网关的请求地址
String requestUrl = epaySubmit.getRequestURL();

//获取调试信息
String debugMsg = epaySubmit.getDebugMsg();

System.out.println("requestUrl:" + requestUrl);
System.out.println("debugMsg:" + debugMsg);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>退款申请测试 - 易票联支付</title>
</head>
<body><br/><br/>
<a target="_blank" href="<%=requestUrl %>">退款申请</a>
</body>
</html>
