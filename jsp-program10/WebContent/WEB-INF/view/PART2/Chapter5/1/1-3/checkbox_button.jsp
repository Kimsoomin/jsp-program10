<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HTML>
<HEAD>
	<TITLE>üũ�ڽ� ��ư �Է� ���</TITLE>

	<SCRIPT LANGUAGE="javascript">

	function check(form) {
		var str="";
		for(var i=0; i<form.SUB1.length; i++)
		{
			if(form.SUB1[i].checked==true)
			{
				str += i+1 + "��°�� ���õǾ����ϴ�.\n"
			}
		}
		alert(str);
	}

	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME=CHECKBOX_BUTTON>

	<B>����� ���� �����ϴ� ���α׷��� �������� �����Դϱ�?</B><P>

	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="A"> ASP ���α׷��� <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="P"> PHP ���α׷��� <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="J"> JSP ���α׷��� <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="V"> JAVA ���α׷��� <BR>

	<INPUT TYPE=BUTTON VALUE="Ȯ ��" onClick="check(this.form)">
</FORM>

</BODY>
</HTML>