<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.epaylinks.EpaylinksSubmit"%>
<%@ page import="sun.misc.BASE64Encoder" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//��Ʊ��֧�������˿�����ʾ��
	
//��������
String trans_type = "refund";
//�̻���
String partner = "130";  //130�����̻���ֻ����219.136.207.190 ���Է�������ʹ��
//�̻������ţ��˿��ۼ��ܶ�ܳ�����������Ľ��
String out_trade_no = "1402974788559";
//�̻��˿��
String out_refund_no = System.currentTimeMillis()+""; //���ǲ���ϵͳ��������Ϊ����������
//�����ܽ��
String total_fee = "100";
//�˿���
String refund_fee = "0.01";
//������Ʊ��֧�������첽֪ͨ��URL
String notify_url = "";
//ǩ������
String sign_type = "SHA256";

//�̻���Կ
String key = "857e6g8y51b5k365f7v954s50u24h14w"; //����130�����̻���Կ

//֧���������
EpaylinksSubmit epaySubmit = new EpaylinksSubmit(request, response); 
//�����̻���Կ
epaySubmit.setKey(key);
//epaySubmit.setGatewayUrl("https://www.epaylinks.cn/paycenter/gateways.do");  //����������
epaySubmit.setGatewayUrl("http://14.23.90.100/paycenter/gateways.do");   //���Է����� 
epaySubmit.setParameter("trans_type",trans_type);

//����֧���������
epaySubmit.setParameter("partner", partner);		        //�̻���
epaySubmit.setParameter("out_trade_no", out_trade_no);		//�̼Ҷ�����
epaySubmit.setParameter("out_refund_no", out_refund_no);	//�̼��˿��
epaySubmit.setParameter("total_amount", total_fee);			//�����ܽ��,��ԪΪ��λ
epaySubmit.setParameter("refund_amount", refund_fee);		    //�˿���
epaySubmit.setParameter("notify_url", notify_url);		    //���պ�̨֪ͨ��URL
epaySubmit.setParameter("sign_type",sign_type);				//ǩ������
 
//��ȡ�ύ�����ص������ַ
String requestUrl = epaySubmit.getRequestURL();

//��ȡ������Ϣ
String debugMsg = epaySubmit.getDebugMsg();

System.out.println("requestUrl:" + requestUrl);
System.out.println("debugMsg:" + debugMsg);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�˿�������� - ��Ʊ��֧��</title>
</head>
<body><br/><br/>
<a target="_blank" href="<%=requestUrl %>">�˿�����</a>
</body>
</html>
