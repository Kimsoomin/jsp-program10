<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> �Ҵ� �������� ��</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 20;
	int value2 = 10;

	value1 += value2;
	out.println("value1�� value2�� ���� �� value1�� ���� : " + value1 + "<BR>");

	value1 -= value2;
	out.println("value1���� value2�� �� �� value1�� ���� : " + value1 + "<BR>");
	
	value1 *= value2;
	out.println("value1�� value2�� ���� �� value1�� ���� : " + value1 + "<BR>");
	
	value1 /= value2;
	out.println("value1�� value2�� ���� �� value1�� ���� : " + value1 + "<BR>");

	value1 %= value2;
	out.println("value1�� value2�� ���� �� �������� value1�� ���� : " + value1 + "<BR>");

	%>
</BODY>

</HTML>