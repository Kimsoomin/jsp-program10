<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
	
	String id = request.getParameter("id");
	out.print("���̵� : " + id + "<BR>");
	
%>

<jsp:include page="jsp-include-request-to.jsp" flush="false"/>

<%
	String username = request.getParameter("username");
	out.print("�̸� : " + username + "<BR>");

%>