<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> IF ~ ELSE ���� ��</TITLE>
</HEAD>

<BODY>

<%

	int score = 84;

	out.println("����� ������ " + score + "�� �Դϴ�.<BR>");

	if( score >=90 ) {		
		out.println("����� A��� �Դϴ�.<BR>");		
	} else if( score >= 80) {		
		out.println("����� B��� �Դϴ�.<BR>");		
	} else {
		out.println("����� C��� �Դϴ�.<BR>");			
	}

%>

</BODY>

</HTML>