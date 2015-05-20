<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jmsht.pay.EpaylinksSubmit"%>
<%@ page import="sun.misc.BASE64Encoder" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//商户号
//String partner = request.getParameter("partner");
String partner = "130";  //130测试商户号只能在14.23.90.100 测试服务器上使用
//商户订单号，此处用系统当前毫秒数，商户根据自己情况调整，确保该订单号在商户系统中的全局唯一
String out_trade_no = System.currentTimeMillis()+""; //这是采用系统毫秒数作为订单号样例
//支付金额
String total_fee = "0.01";
//货币代码，人民币：RMB；港币：HKD；美元：USD （非人民币收单业务，需要与业务人员联系开通）
String currency_type = "RMB";
//创建订单的客户端IP（消费者电脑公网IP）
//String order_create_ip = request.getRemoteAddr();  //创建订单的客户端IP（消费者电脑公网IP，用于防钓鱼支付）
String order_create_ip = "";
//商户密钥
String key = "857e6g8y51b5k365f7v954s50u24h14w"; //这是130测试商户密钥
//签名类型
String sign_type = "SHA256";
//交易完成后跳转的URL，用来接收网关的页面转跳即时通知结果
String return_url = "http://localhost/paycenter/TestPayCenter/v3.0/returnUrl.jsp";
//接收支付网关异步通知的URL
String notify_url = "http://localhost/paycenter/TestPayCenter/v3.0/notifyUrl.jsp";
//直连银行参数（不停留支付网关页面，直接转跳到银行支付页面）
//String pay_id = "zhaohang";  //直连招商银行参数值
String pay_id = "";
//订单备注，该信息使用64位编码提交服务器，并将在支付完成后随支付结果原样返回
String memo = "测试备注信息";
BASE64Encoder encoder = new BASE64Encoder();
String base64_memo = encoder.encode(memo.getBytes()).toString();

//支付请求对象
EpaylinksSubmit epaySubmit = new EpaylinksSubmit(request, response);
//设置商户密钥
epaySubmit.setKey(key);
//epaySubmit.setGatewayUrl("https://www.epaylinks.cn/paycenter/v2.0/getoi.do");  //生产服务器
epaySubmit.setGatewayUrl("http://14.23.90.100/paycenter/v2.0/getoi.do");   //测试服务器

//设置支付请求参数
epaySubmit.setParameter("partner", partner);		        //商户号
epaySubmit.setParameter("out_trade_no", out_trade_no);		//商家订单号
epaySubmit.setParameter("total_fee", total_fee);			//商品金额,以元为单位
epaySubmit.setParameter("return_url", return_url);		    //交易完成后跳转的URL
epaySubmit.setParameter("notify_url", notify_url);		    //接收后台通知的URL
epaySubmit.setParameter("currency_type", currency_type);	//货币种类
epaySubmit.setParameter("order_create_ip",order_create_ip); //创建订单的客户端IP（消费者电脑公网IP，用于防钓鱼支付）
epaySubmit.setParameter("sign_type", sign_type);			//签名算法（暂时只支持SHA256）

//可选参数
epaySubmit.setParameter("pay_id", pay_id);	        		//直连银行参数，例子是直接转跳到招商银行时的参数
epaySubmit.setParameter("base64_memo", base64_memo);		//订单备注的BASE64编码
 
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
<title>支付测试页面</title>
</head>
<body><br/><br/>
<a target="_blank" href="<%=requestUrl %>">支付</a>
</body>
</html>
