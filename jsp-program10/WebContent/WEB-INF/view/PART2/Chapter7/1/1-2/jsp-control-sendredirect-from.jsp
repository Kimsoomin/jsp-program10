<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder"%>

<%
	String cnt = "asia";  
	String nation = URLEncoder.encode("���ѹα�","euc-kr");
	
    response.sendRedirect(request.getContextPath() + "/jsp-control-sendredirect-to.jsp?cnt=" + cnt + "&nation=" + nation);
%>