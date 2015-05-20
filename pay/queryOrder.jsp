<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.epaylinks.EpaylinksSubmit" %>
<%@ page import="com.epaylinks.client.ResponseHelper" %>    
<%@ page import="com.epaylinks.client.HttpPostUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<title>订单查询后台调用示例</title>
</head>
<body><br/>
<%
	//网关订单查询地址
//	String action_url = "https://www.epaylinks.cn/paycenter/gateways.do"; //生产环境订单查询地址
	String action_url = "http://14.23.90.100/paycenter/gateways.do";  //测试环境订单查询地址
	
		//交易类型
		String trans_type = "query";
		//商户号 
    String param_partner = "130";

    //密钥 
    String key = "857e6g8y51b5k365f7v954s50u24h14w";
    
    //订单号
    String param_out_trade_no = "1364953038575";
    
    //签名类型
    String param_sign_type = "SHA256";
    
    //创建查询请求对象
    EpaylinksSubmit epaySubmit = new EpaylinksSubmit(request, response);
    //通信对象
    HttpPostUtil postUtil = new HttpPostUtil();
    //应答对象
    ResponseHelper resHelper = new ResponseHelper();
    
    //-----------------------------
    //设置请求参数
    //-----------------------------
    epaySubmit.setKey(key);
    epaySubmit.setGatewayUrl(action_url);
    epaySubmit.setParameter("trans_type",trans_type);
    
    //-----------------------------
    //设置接口参数
    //-----------------------------
    epaySubmit.setParameter("partner", param_partner);    //商户号
    
    epaySubmit.setParameter("out_trade_no", param_out_trade_no);  //商家订单号

    //-----------------------------
    //设置通信参数
    //-----------------------------	
    
    //设置请求内容
    String requestUrl = epaySubmit.getRequestURL();
    
    //后台调用
    if(postUtil.postRequest(requestUrl)) {
    	
    	resHelper.setContent(postUtil.getResContent());
    	resHelper.setKey(key);
    	   	
    	//获取返回码
    	String resp_code = resHelper.getParameter("resp_code");
    	
    	//判断签名及结果
    	if(resHelper.verifySign()&& "00".equals(resp_code)) {
    		out.println("订单查询成功</br>");
   			//响应备注信息
   			String resp_desc = resHelper.getParameter("resp_desc");
   			//商家ID
   			String partner = resHelper.getParameter("partner");
   			//商户订单号
            String out_trade_no = resHelper.getParameter("out_trade_no");
            //币种
            String curr_code = resHelper.getParameter("curr_code");
            //金额,以元为单位
            String amount = resHelper.getParameter("amount");
            //支付网关支付单号
            String pay_no = resHelper.getParameter("pay_no");
            //支付结果
            String pay_result = resHelper.getParameter("pay_result");
            //清算日期
            String sett_date = resHelper.getParameter("sett_date");
   			//签名类型
   			String sign_type = resHelper.getParameter("sign_type");
   			//签名
   			String sign = resHelper.getParameter("sign");
            //支付成功
            //if("1".equals(pay_result)) {
                   //业务处理
                   out.println("resp_code=" + resp_code+"</br>");
                   out.println("resp_desc=" + resp_desc+"</br>");
                   out.println("partner=" + partner+"</br>");
                   out.println("out_trade_no=" + out_trade_no+"</br>");
                   out.println("curr_code=" + curr_code+"</br>");
                   out.println("amount=" + amount+"</br>");
                   out.println("pay_no=" + pay_no+"</br>");
                   out.println("pay_result=" + pay_result+"</br>");
                   out.println("sett_date=" + sett_date+"</br>");
                   out.println("sign_type=" + sign_type+"</br>");
                   out.println("sign=" + sign+"</br>");
                   
                   System.out.println("resp_code=" + resp_code+"</br>");
                   System.out.println("resp_desc=" + resp_desc+"</br>");
                   System.out.println("partner=" + partner+"</br>");
                   System.out.println("out_trade_no=" + out_trade_no+"</br>");
                   System.out.println("curr_code=" + curr_code+"</br>");
                   System.out.println("amount=" + amount+"</br>");
                   System.out.println("pay_no=" + pay_no+"</br>");
                   System.out.println("pay_result=" + pay_result+"</br>");
                   System.out.println("sett_date=" + sett_date+"</br>");
                   System.out.println("sign_type=" + sign_type+"</br>");
                   System.out.println("sign=" + sign+"</br>");
                   
          //  }
    	} else {
    		//错误时，返回结果未签名，记录resp_code、resp_desc看失败详情。
    		out.println("验证签名失败或业务错误<br/>");
    		out.println("resp_code:" + resHelper.getParameter("resp_code")+" resp_desc:" + resHelper.getParameter("resp_desc"));
    		System.out.println("验证签名失败或业务错误");
    		System.out.println("resp_code:" + resHelper.getParameter("resp_code")+" resp_desc:" + resHelper.getParameter("resp_desc"));
    	}	
    } else {
        out.println("后台调用通信失败");
    	System.out.println("后台调用通信失败");   	
    	System.out.println(postUtil.getResContent());
    	//有可能因为网络原因，请求已经处理，但未收到应答。
    }
    
    //打印调试信息
    System.out.println("request url:" + requestUrl);
    System.out.println("request debug:" + epaySubmit.getDebugMsg());
    System.out.println("response debug:" + resHelper.getDebugMsg());
%>

</body>
</html>
