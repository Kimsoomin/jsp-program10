<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>�ڹٽ�ũ��Ʈ�� ����� ������ ����</TITLE>

	<SCRIPT LANGUAGE="javascript">
		function check() {
			if( !document.user.input_data.value ) {
				alert("�����͸� �Է��ϼ���.");
				document.user.input_data.focus();
				return;
			}
			document.user.submit();
		}
	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME="user" METHOD=POST ACTION="user_login.jsp">
	�Էµ����� : <INPUT TYPE=TEXT NAME="input_data" SIZE=20>
	<INPUT TYPE=button VALUE="����" onClick="javascript:check()">
</FORM>

</BODY>
</HTML>
