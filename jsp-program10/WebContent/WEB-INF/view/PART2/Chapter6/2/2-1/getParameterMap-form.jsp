<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<HTML>
	<HEAD>
	</HEAD>
<BODY>

	<FORM NAME="myForm" METHOD=POST  ACTION="getParameterMap-proc.jsp" >
		�̸� : <INPUT TYPE=TEXT NAME="name" SIZE=20><br>
		����� ������ �ܱ�� ��� �����Ͻÿ�. <br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="E">����<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="J">�Ϻ���<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="C">�߱���<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="G">���Ͼ�<br>
		<INPUT TYPE=SUBMIT VALUE="����">
	</FORM>

</BODY>
</HTML>