<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="sun.misc.BASE64Decoder" %>
<%@ page import="com.jmsht.pay.EpaylinksNotify"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 

//֧�����ҳ��ת����ʱ֪ͨʾ������
//�̻���Կ
String key = "857e6g8y51b5k365f7v954s50u24h14w";

//����֧��Ӧ�����
EpaylinksNotify notify = new EpaylinksNotify(request, response);
//�����̻���Կ
notify.setKey(key);

//��֤���ؽ��ǩ��
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

		//����ҵ��ʼ
		out.print("</br>֧���ɹ�!</br></br>");	
		out.print("�̼ұ�ţ�"+partner+"</br>");
		out.print("�̼�ϵͳ�����ţ�"+out_trade_no+"</br>");
		out.print("����ϵͳ֧���ţ�"+pay_no+"</br>");
		out.print("������"+amount+"</br>");
		out.print("֧�������1��ʾ�ɹ�����"+pay_result+"</br>");
		out.print("֧��ʱ�䣺"+pay_time+"<br/>");
		out.print("�������ڣ�"+sett_date+"<br/>");
		out.print("����ʱ�䣺"+sett_time+"<br/>");
		out.print("������ע��"+memo+"</br>");
		out.print("ǩ�����ͣ�"+sign_type+"</br>");
		out.print("ǩ����"+sign+"</br>");
		
		System.out.println("</br>֧���ɹ�!</br></br>");
		System.out.println("�̼Һţ�"+partner+"</br>");
		System.out.println("�̼�ϵͳ�����ţ�"+out_trade_no+"</br>");
		System.out.println("����ϵͳ֧���ţ�"+pay_no+"</br>");
		System.out.println("������"+amount+"</br>");
		System.out.println("֧�������1��ʾ�ɹ�����"+pay_result+"</br>");
		System.out.println("֧��ʱ�䣺"+pay_time);
		System.out.println("�������ڣ�"+sett_date);
		System.out.println("����ʱ�䣺"+sett_time);
		System.out.println("������ע��"+memo+"</br>");
		System.out.println("ǩ�����ͣ�"+sign_type+"</br>");
		System.out.println("ǩ����"+sign+"</br>");
		
		
		//ע�⽻�׵���Ҫ�ظ�����
		//ע���жϷ��ؽ��
		
		//����ҵ�����
	        
	} else {
		//�������ɹ�����
		out.print("֧��ʧ�ܣ�</br></br>");
		out.print("�̼�ϵͳ�����ţ�"+out_trade_no+"</br>");
		out.print("����ϵͳ֧���ţ�"+pay_no+"</br>");
		out.print("֧�������0��ʾδ֧����2��ʾ֧��ʧ�ܣ���"+pay_result+"</br>");
		
		System.out.println("֧��ʧ�ܣ�</br></br>");
		System.out.println("�̼�ϵͳ�����ţ�"+out_trade_no+"</br>");
		System.out.println("����ϵͳ֧���ţ�"+pay_no+"</br>");
		System.out.println("֧�������0��ʾδ֧����2��ʾ֧��ʧ�ܣ���"+pay_result+"</br>");
	}
	
} else {

	out.println("��֤ǩ��ʧ��");
	System.out.println("��֤ǩ��ʧ��");
}
//��ȡ������Ϣ
String debugMsg = notify.getDebugMsg();
System.out.println("debugMsg:" + debugMsg);
%>
