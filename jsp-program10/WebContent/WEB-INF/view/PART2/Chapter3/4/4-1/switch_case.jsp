<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> SWITCH-CASE ���� ��</TITLE>
</HEAD>

<BODY>

<%

	int score = 84;
	int num_score = score/10;
	
	out.println("����� ������ " + score + "�� �Դϴ�.<BR>");

	switch (num_score) {
	
		case 10 :
			out.println("����� A��� �Դϴ�.<BR>");
			break;
			
		case 9 :
			out.println("����� B��� �Դϴ�.<BR>");
			break;
					
		default :
			out.println("����� C��� �Դϴ�.<BR>");
			
	}

%>

</BODY>

</HTML>