<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("euc-kr");

	String pw = request.getParameter("pw");
	out.println("�н����� : " + pw + "<BR>");
	
%>