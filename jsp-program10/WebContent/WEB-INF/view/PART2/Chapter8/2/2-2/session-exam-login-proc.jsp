<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	// �����ͺ��̽����� ������ ���̵�� �н�����
	String db_id = "korea";
	String db_pw = "koreapass";
	
	// ����ڰ� �Է��� ���̵�� �н����� ����
	String user_id = request.getParameter("userid");
	String user_pw = request.getParameter("userpw");
	
	// ������� ������ �����ͺ��̽��� ������ ��
	if( (db_id.equals(user_id)) && (db_pw.equals(user_pw)) ) {
		
		// ���̵�� �н����尡 ��ġ�� ��� ���� �Ӽ� ����
		session.setAttribute("member_id", user_id);
		
		out.println("<B>" + user_id + "</B> ���� �湮�� ȯ���մϴ�.<HR>");
		out.println("<A HREF=\"session-exam-check.jsp\">���� Ȯ�� ������</A>");
		out.println("<BR>");
		out.println("<A HREF=\"session-exam-logout.jsp\">�α׾ƿ�</A>");
		
	} else {
	
		// ���̵� �н����尡 �ٸ� ��� ó��
		out.println("<script type=\"text/javascript\">");
		out.println("alert('���̵� �н����尡 �ٸ��ϴ�');");
		out.println("history.back();");
		out.println("</script>");
		
	}


%>