<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	pageContext.setAttribute("season1","��");
	String season1 = (String)pageContext.getAttribute("season1");

	request.setAttribute("season2", "����");
	String season2 = (String)request.getAttribute("season2");

	session.setAttribute("season3", "����");
	String season3 = (String)session.getAttribute("season3");

	application.setAttribute("season4", "�ܿ�");
	String season4 = (String)application.getAttribute("season4");
%>

page���� : <%=season1 %><BR>
Request���� : <%=season2 %><BR>
session���� : <%=season3 %><BR>
application���� : <%=season4 %><BR>