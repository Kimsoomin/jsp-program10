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
		
	// member_ok ��Ű�� �����ϴ� ��� ���� ��Ű ����
	if(access_ok) {
		
		for( int i=0; i<cookies.length; i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('�α׾ƿ��Ǿ����ϴ�.');");
		out.println("location.href=\"cookie-exam-login-form.jsp\"");
		out.println("</script>");	
		
	} else {
		
		// member_ok ��Ű�� �������� ���� ��� ��� ����
		out.println("�α����� �ʿ��մϴ�");
		
	}
%>