<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="com.jmsht.pay.EpaylinksNotify" %>
<%@ page import="sun.misc.BASE64Decoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


//��Կ
String key = "857e6g8y51b5k365f7v954s50u24h14w";

//����֧��Ӧ�����
EpaylinksNotify notify = new EpaylinksNotify(request, response);
notify.setKey(key);

//��֤ǩ��
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
		//����ҵ��ʼ
		
		//��̨��ӡ�첽֪ͨ��Ϣ
		
		System.out.println("��ȡ�첽֪ͨ��Ϣ�ɹ�!");
		System.out.println("<br/>success<br/><br/>");
		System.out.println("�̼�ID��"+partner);
		System.out.println("�̼�ϵͳ�����ţ�"+out_trade_no);
		System.out.println("����ϵͳ֧���ţ�"+pay_no);
		System.out.println("������"+amount);
		System.out.println("֧�������1��ʾ�ɹ�����"+pay_result);
		System.out.println("֧��ʱ�䣺"+pay_time);
		System.out.println("�������ڣ�"+sett_date);
		System.out.println("����ʱ�䣺"+sett_time);
		System.out.println("������ע��"+memo);
		System.out.println("ǩ���㷨��"+sign_type);
		System.out.println("ǩ����"+sign);
		
		//ҳ����Ӧ��ӡ�첽֪ͨ��Ϣ
		out.println("<br/>success<br/><br/>");	
		out.println("�̼�ID��"+partner+"<br/>");
		out.println("�̼�ϵͳ�����ţ�"+out_trade_no+"<br/>");
		out.println("����ϵͳ֧���ţ�"+pay_no+"<br/>");
		out.println("������"+amount+"<br/>");
		out.println("֧�������1��ʾ�ɹ�����"+pay_result+"<br/>");
		out.println("֧��ʱ�䣺"+pay_time+"<br/>");
		out.println("�������ڣ�"+sett_date+"<br/>");
		out.println("����ʱ�䣺"+sett_time+"<br/>");
		out.println("������ע��"+memo+"<br/>");
		out.println("ǩ���㷨��"+sign_type+"<br/>");
		out.println("ǩ����"+sign+"<br/>");
		
		//ע�⽻�׵���Ҫ�ظ�����
		//ע���жϷ��ؽ��
		
		//����ҵ�����

	} else {
		//�������ɹ�����
		System.out.println("��ȡ�첽֪ͨʧ�ܣ�");
		System.out.println("�̼�ϵͳ�����ţ�"+out_trade_no);
		System.out.println("֧�������0��ʾδ֧����2��ʾ֧��ʧ�ܣ���"+pay_result);
		
		//ҳ����Ӧ��ӡ�첽֪ͨ��Ϣ
		out.println("��ȡ�첽֪ͨʧ�ܣ�");
		out.println("�̼�ϵͳ�����ţ�"+out_trade_no);
		out.println("֧�������0��ʾδ֧����2��ʾ֧��ʧ�ܣ���"+pay_result);
	}
  */
	//����Success���ط���������ʾ�Ѿ��յ���̨֪ͨ�������ٴη���֪ͨ
	notify.responseToGateway("success");
	
} else {
	System.out.println("��֤ǩ��ʧ��");
	out.println("��֤ǩ��ʧ��");
}
//��ȡdebug��Ϣ,�����debug��Ϣд����־�����㶨λ����
String debugMsg = notify.getDebugMsg();
System.out.println("debugMsg:" + debugMsg);
%>

