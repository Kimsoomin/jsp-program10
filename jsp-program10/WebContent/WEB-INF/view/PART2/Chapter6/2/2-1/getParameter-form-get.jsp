<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<HTML>

	<HEAD>
		<TITLE>getParameter() �޼ҵ��� ��</TITLE>
	</HEAD>
	
<BODY>

	<% String my_nation = "���ѹα�"; %>
	
	<FORM NAME="myform"  METHOD=POST action="getParameter-proc-get.jsp?nation=<%=my_nation%>">
    	��ȣ(����) : <INPUT TYPE=TEXT NAME="num" SIZE=10><BR>
     	�̸�(���ڿ�) : <INPUT TYPE=TEXT NAME="name" SIZE=20><BR>
     	����(�Ǽ�) : <INPUT TYPE=TEXT NAME="score" SIZE=5><BR>
     	<INPUT TYPE=SUBMIT VALUE="����">
	</FORM>
</BODY>

</HTML>