<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	// ���� �Ӽ� member_id ����
	String member_id = (String)session.getAttribute("member_id");
	
	// member_id�� �����ϴ� ���
	if(member_id != null) {
		
		session.invalidate();
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('�α׾ƿ��Ǿ����ϴ�.');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");	
		
	} else {
		
		// member_id�� �������� ���� ��� ��� ����
		out.println("<script type=\"text/javascript\">");
		out.println("alert('�α����� �ʿ��մϴ�');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");
		
	}
%>