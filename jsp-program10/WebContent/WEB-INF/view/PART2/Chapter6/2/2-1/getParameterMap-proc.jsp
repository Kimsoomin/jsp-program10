<%@ page contentType="text/html; charset=euc-kr"  pageEncoding="euc-kr"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
Map resultMap = request.getParameterMap();

String[] myname = (String[])resultMap.get("name");
out.println("����� �̸��� " + myname[0] + "�Դϴ� <br>");


String[] mylang = (String[])resultMap.get("lang");

String str = "";

for(int i=0; i<mylang.length; i++) {
	if(mylang[i].equals("E")) { str = str.concat("���� "); continue; } 
	if(mylang[i].equals("J")) { str = str.concat("�Ϻ��� "); continue; } 
	if(mylang[i].equals("C")) { str = str.concat("�߱��� "); continue; } 
	if(mylang[i].equals("G")) { str = str.concat("���Ͼ� "); continue; }
}
out.println("����� ������ �ܱ���� " + str + "�Դϴ�");

%>