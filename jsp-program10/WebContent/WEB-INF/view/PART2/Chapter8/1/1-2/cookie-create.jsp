<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>

<%
	// ��Ű id ����
	Cookie mycookie1 = new Cookie("id","hong");
	response.addCookie(mycookie1);
	
	// ��Ű name ���� (�ѱ� ���ڵ�)
	Cookie mycookie2 = new Cookie("name",URLEncoder.encode("ȫ�浿", "euc-kr"));
	response.addCookie(mycookie2);

%>

<!-- id��� ��Ű�� �̸��� ���� ��� --> 
mycookie1�� ��Ű�̸� : <%=mycookie1.getName() %><BR>
mycookie1�� ��Ű �� : <%=mycookie1.getValue() %><BR><BR>

<!-- name�̶�� ��Ű�� �̸��� ���� ��� --> 
mycookie2�� ��Ű�̸� : <%=mycookie2.getName() %><BR>
mycookie2�� ��Ű �� : <%=URLDecoder.decode(mycookie2.getValue(), "euc-kr") %><BR><BR>