<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	String cnt = request.getParameter("cnt");
	String nation = request.getParameter("nation");

	out.println("����̸� : " + cnt + "<BR>");	
	out.println("�����̸� : " + nation);	
%>

