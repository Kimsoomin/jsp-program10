<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("�� ���ڿ��� pageContext-include.jsp ������ �����Դϴ�.<BR><BR>");
	
	// pageContext ��ü�� include() �޼ҵ� ���
	pageContext.include("pageContext-include-result.jsp");	

%>