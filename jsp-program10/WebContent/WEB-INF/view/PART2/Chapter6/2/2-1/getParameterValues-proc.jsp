<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr");%>

<%

String[] test = request.getParameterValues("lang");
String str = "";

for(int i=0; i<test.length; i++) {
	if(test[i].equals("E")) { str = str.concat("���� "); continue; } 
	if(test[i].equals("J")) { str = str.concat("�Ϻ��� "); continue; } 
	if(test[i].equals("C")) { str = str.concat("�߱��� "); continue; } 
	if(test[i].equals("G")) { str = str.concat("���Ͼ� "); continue; } 
}

out.println("����� ������ �ܱ���� " + str + "�Դϴ�");

%>