<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	String capt1 = request.getParameter("korea");
	String capt2 = request.getParameter("japan");

	out.println("jsp-include-parameter-to.jsp ������ ó�� ����Դϴ�<BR>");

	out.println("�ѱ��� ������ "+ capt1 + "�Դϴ�.<BR>");
	out.println("�Ϻ��� ������ "+ capt2 + "�Դϴ�.<BR><BR>");
     
%>