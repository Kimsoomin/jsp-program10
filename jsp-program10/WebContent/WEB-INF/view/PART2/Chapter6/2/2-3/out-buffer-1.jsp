<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("���� ������ ũ�� : " + out.getBufferSize() + "<BR><BR>" );

	out.println("Happy Birthday to you.<BR><BR>");
		
	out.println("���� ���ۿ� �����ִ� ũ�� : " + out.getRemaining() + "<BR><BR>");

	out.println("flush�� �����մϴ�.<BR><BR>");
	out.flush();	
	
	// flush�� ����� �� �Ʒ��� �������� ��µǴ� ������
	// ��ũ��Ʈ�� ����Ǹ� �ڵ����� flush�� �߻��ϱ� �����Դϴ�.
	
	out.println("���� ���ۿ� �����ִ� ũ�� : " + out.getRemaining() + "<BR><BR>");
	
	if( out.isAutoFlush()) {
		out.println("���۰� �������� �ڵ����� flush�� �߻��մϴ�.");
	}
	
%>