<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE> FORM �Է»���</TITLE>
</HEAD>

<SCRIPT LANGUAGE="javascript">

function display(form) {
	var id = form.UserId.value;
	var pw = form.UserPw.value;
	var nation = form.UserNation.value;

	alert("�Է��� ���̵�� " + id + "�̰� �н������ " + pw + "�Դϴ�.\n����� ��ű����� " + nation + "�Դϴ�.");

}

</SCRIPT>

<BODY>

<FORM NAME=LOGIN>

<TABLE BORDER=1 WIDTH=300 CELLSPACING=0 CELLPADDING=2 ALIGN=CENTER>

	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>�� �� �� : </TD>
		<TD WIDTH=200><INPUT TYPE=TEXT NAME=UserId SIZE=20 MAXLENGTH=20></TD>
	</TR>
	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>�н����� : </TD>
		<TD WIDTH=200><INPUT TYPE=PASSWORD NAME=UserPw SIZE=20 MAXLENGTH=20></TD>
	</TR>
	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>��ű��� : </TD>
		<TD WIDTH=200><INPUT TYPE=TEXT NAME=UserNation SIZE=20 MAXLENGTH=20></TD>
	</TR>

</TABLE>

<TABLE BORDER=0 WIDTH=300 ALIGN=CENTER>
	<TR ALIGN=CENTER>
		<TD>
			<INPUT TYPE=BUTTON NAME=BTN1 VALUE="Ȯ��" onClick="display(this.form)">
			<INPUT TYPE=RESET NAME=BTN1 VALUE="���">
		</TD>
	</TR>
</TABLE>
		
</FORM>

</BODY>

</HTML>