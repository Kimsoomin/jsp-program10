<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>SELECT �Է� ���</TITLE>

	<SCRIPT LANGUAGE="javascript">

		function check(form) {

			index = form.SUBJECT.selectedIndex;

			if( index == 0 ) {
				alert("������ �����ϼ���");
				return false;
			}

			list = form.SUBJECT.options[form.SUBJECT.selectedIndex].text;
			value = form.SUBJECT.options[form.SUBJECT.selectedIndex].value;

			var result = "";

			result += "�����׸��� �ε��� : " + index + "\n";
			result += "�����׸��� ����Ʈ : " + list + "\n";
			result += "�����׸��� �� : " + value + "\n";

			alert(result);
		}

	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME=CHECKBOX_BUTTON>

	<B>����� ���� �����ϴ� ���α׷��� �������� �����Դϱ�?</B><P>

	<SELECT NAME=SUBJECT SIZE=1>
		<OPTION VALUE="NOT" SELECTED>���� ����
		<OPTION VALUE="A"> ASP ���α׷���
		<OPTION VALUE="P"> PHP ���α׷���
		<OPTION VALUE="J"> JSP ���α׷���
		<OPTION VALUE="V"> JAVA ���α׷���
	</SELECT>

	<INPUT TYPE=BUTTON VALUE="Ȯ ��" onClick="check(this.form)">

</FORM>

</BODY>
</HTML>