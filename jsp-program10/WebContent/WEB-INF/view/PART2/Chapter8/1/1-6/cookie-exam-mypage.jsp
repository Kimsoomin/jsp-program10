<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// Ŭ���̾�Ʈ�� ���޵� ��Ű ���� ����
	Cookie[] cookies = request.getCookies();

	Boolean access_ok = false;
	
	// �α��� �������� ������ member_ok ��Ű�� �����ϴ��� ����
	if( (cookies != null) && (cookies.length >0) ) {
		for( int i=0; i<cookies.length; i++) {
			if((cookies[i].getName()).equals("member_ok")) {
				access_ok = true;
			}
		}
	}
	
	// member_ok ��Ű�� �����ϴ� ��� ��� ����
	if(access_ok) {
		
		out.println("���� �������� �����Դϴ�");
		out.println("<BR>");
		out.println("<A HREF=\"cookie-exam-logout.jsp\">�α׾ƿ�</A>");	
		
	} else {
		
		// member_ok ��Ű�� �������� ���� ��� ��� ����
		out.println("�α����� �ʿ��մϴ�");
		
	}
%>