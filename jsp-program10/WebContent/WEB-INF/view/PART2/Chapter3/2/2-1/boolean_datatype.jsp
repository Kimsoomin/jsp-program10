<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> �ο��� ������ Ÿ�� ����</TITLE>
</HEAD>

<BODY>

<%
	int i = 1;
	boolean flag = true;
	
	while(flag) {
		
		out.println( "���� i�� ���� " + i + "�Դϴ�.<BR>");

		if(i == 10) flag = false;
		i++;
		
	}
	
%>

</BODY>

</HTML>