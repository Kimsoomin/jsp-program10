<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> ��ġ �������� ��</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 4;
	
	out.println(value1 + " + " + value2 + " = " + (value1+value2) + "<BR>");
	out.println(value1 + " - " + value2 + " = " + (value1-value2) + "<BR>");
	out.println(value1 + " * " + value2 + " = " + (value1*value2) + "<BR>");
	out.println(value1 + " / " + value2 + " = " + (value1/value2) + "<BR>");
	out.println(value1 + " % " + value2 + " = " + (value1%value2) + "<BR>");
%>

</BODY>

</HTML>