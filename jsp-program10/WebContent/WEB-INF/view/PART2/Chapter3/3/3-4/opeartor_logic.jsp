<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> �� �������� ��</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 20;
%>

- value1�� value2�� ��� 15���� ũ��  :  <%= (value1>15) && (value2>15) %> <BR>
- value1�� value2�� �ϳ��� 15���� ũ��  :  <%= (value1>15) || (value2>15) %> <BR>

</BODY>

</HTML>