<%@ page contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page buffer="2kb" autoFlush="false" %>

<HTML>

<HEAD>
	<TITLE> buffer �Ӽ��� autoFlush �Ӽ��� ��</TITLE>
</HEAD>

<BODY>

<%
	for ( int i=0; i<1000; i++ ) {
		out.println("JSP Programming");
	}

%>

</BODY>
</HTML>