<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// ���� �Ӽ� member_id ����
	String member_id = (String)session.getAttribute("member_id");
	
	// member_id�� �����ϴ� ��� ��� ����
	if(member_id != null) {
		
		out.println("������ ������ ���������� ��µ˴ϴ�.");
		out.println("<BR>");
		out.println("<A HREF=\"session-exam-logout.jsp\">�α׾ƿ�</A>");	
		
	} else {
		
		// member_id�� �������� ���� ��� ��� ����
		out.println("<script type=\"text/javascript\">");
		out.println("alert('�α����� �ʿ��մϴ�');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");
		
	}
%>