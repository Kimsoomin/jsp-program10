<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> String Ŭ������ ��</TITLE>
</HEAD>

<BODY>

<%
	
	String str1 = "JSP ���α׷���";
	String str2 = "JSP ���α׷���";
	
	String str3 = new String("JSP ���α׷���");
	String str4= new String("JSP ���α׷���");

	out.println("str1 = str2 : " + (str1==str2) + "<BR>");
	out.println("str1 = str3 : " + (str1==str4) + "<BR>");
	out.println("str3 = str4 : " + (str3==str4) + "<BR><BR>");

	out.println("str1.equal(str2) : " + str1.equals(str2) + "<BR>");
	out.println("str1.equal(str3) : " + str1.equals(str3) + "<BR>");
	out.println("str3.equal(str4) : " + str3.equals(str4));

%>

</BODY>

</HTML>