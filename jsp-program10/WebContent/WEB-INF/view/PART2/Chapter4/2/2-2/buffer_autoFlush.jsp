<%@ page contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page buffer="2kb" autoFlush="false" %>

<HTML>

<HEAD>
	<TITLE> buffer 속성과 autoFlush 속성의 예</TITLE>
</HEAD>

<BODY>

<%
	for ( int i=0; i<1000; i++ ) {
		out.println("JSP Programming");
	}

%>

</BODY>
</HTML>