<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.epaylinks.EpaylinksSubmit" %>
<%@ page import="com.epaylinks.client.ResponseHelper" %>    
<%@ page import="com.epaylinks.client.HttpPostUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<title>������ѯ��̨����ʾ��</title>
</head>
<body><br/>
<%
	//���ض�����ѯ��ַ
//	String action_url = "https://www.epaylinks.cn/paycenter/gateways.do"; //��������������ѯ��ַ
	String action_url = "http://14.23.90.100/paycenter/gateways.do";  //���Ի���������ѯ��ַ
	
		//��������
		String trans_type = "query";
		//�̻��� 
    String param_partner = "130";

    //��Կ 
    String key = "857e6g8y51b5k365f7v954s50u24h14w";
    
    //������
    String param_out_trade_no = "1364953038575";
    
    //ǩ������
    String param_sign_type = "SHA256";
    
    //������ѯ�������
    EpaylinksSubmit epaySubmit = new EpaylinksSubmit(request, response);
    //ͨ�Ŷ���
    HttpPostUtil postUtil = new HttpPostUtil();
    //Ӧ�����
    ResponseHelper resHelper = new ResponseHelper();
    
    //-----------------------------
    //�����������
    //-----------------------------
    epaySubmit.setKey(key);
    epaySubmit.setGatewayUrl(action_url);
    epaySubmit.setParameter("trans_type",trans_type);
    
    //-----------------------------
    //���ýӿڲ���
    //-----------------------------
    epaySubmit.setParameter("partner", param_partner);    //�̻���
    
    epaySubmit.setParameter("out_trade_no", param_out_trade_no);  //�̼Ҷ�����

    //-----------------------------
    //����ͨ�Ų���
    //-----------------------------	
    
    //������������
    String requestUrl = epaySubmit.getRequestURL();
    
    //��̨����
    if(postUtil.postRequest(requestUrl)) {
    	
    	resHelper.setContent(postUtil.getResContent());
    	resHelper.setKey(key);
    	   	
    	//��ȡ������
    	String resp_code = resHelper.getParameter("resp_code");
    	
    	//�ж�ǩ�������
    	if(resHelper.verifySign()&& "00".equals(resp_code)) {
    		out.println("������ѯ�ɹ�</br>");
   			//��Ӧ��ע��Ϣ
   			String resp_desc = resHelper.getParameter("resp_desc");
   			//�̼�ID
   			String partner = resHelper.getParameter("partner");
   			//�̻�������
            String out_trade_no = resHelper.getParameter("out_trade_no");
            //����
            String curr_code = resHelper.getParameter("curr_code");
            //���,��ԪΪ��λ
            String amount = resHelper.getParameter("amount");
            //֧������֧������
            String pay_no = resHelper.getParameter("pay_no");
            //֧�����
            String pay_result = resHelper.getParameter("pay_result");
            //��������
            String sett_date = resHelper.getParameter("sett_date");
   			//ǩ������
   			String sign_type = resHelper.getParameter("sign_type");
   			//ǩ��
   			String sign = resHelper.getParameter("sign");
            //֧���ɹ�
            //if("1".equals(pay_result)) {
                   //ҵ����
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
    		//����ʱ�����ؽ��δǩ������¼resp_code��resp_desc��ʧ�����顣
    		out.println("��֤ǩ��ʧ�ܻ�ҵ�����<br/>");
    		out.println("resp_code:" + resHelper.getParameter("resp_code")+" resp_desc:" + resHelper.getParameter("resp_desc"));
    		System.out.println("��֤ǩ��ʧ�ܻ�ҵ�����");
    		System.out.println("resp_code:" + resHelper.getParameter("resp_code")+" resp_desc:" + resHelper.getParameter("resp_desc"));
    	}	
    } else {
        out.println("��̨����ͨ��ʧ��");
    	System.out.println("��̨����ͨ��ʧ��");   	
    	System.out.println(postUtil.getResContent());
    	//�п�����Ϊ����ԭ�������Ѿ�������δ�յ�Ӧ��
    }
    
    //��ӡ������Ϣ
    System.out.println("request url:" + requestUrl);
    System.out.println("request debug:" + epaySubmit.getDebugMsg());
    System.out.println("response debug:" + resHelper.getDebugMsg());
%>

</body>
</html>
