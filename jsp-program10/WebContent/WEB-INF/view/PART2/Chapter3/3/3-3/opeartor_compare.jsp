<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> �� �������� ��</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 20;
%>

- value1�� value2�� ����  :  <%= value1 == value2 %> <BR>
- value1�� value2�� �ٸ���  :  <%= value1 != value2 %> <BR>
- value1�� value2���� ũ��  :  <%= value1 > value2 %> <BR>
- value1�� value2���� ũ�ų� ����  :  <%= value1 >= value2 %> <BR>
- value1�� value2���� �۴�  :  <%= value1 < value2 %> <BR>
- value1�� value2���� �۰ų� ����  :  <%= value1 <= value2 %> <BR>

</BODY>

</HTML>