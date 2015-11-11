<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.net.URLEncoder"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
//----------------------------------���̵� ����	
String user_id = (String)session.getAttribute("member_id");

//---------------------------------- ������ ���� ����	
int m_cp = Integer.parseInt(request.getParameter("CurrentPage"));

//---------------------------------- Ű���� ������ ����	
String m_column = request.getParameter("column");
if (m_column == null) m_column="";	
	
String m_encoded_key=null;
	
String m_key = request.getParameter("key");
if(m_key!=null) {
	m_encoded_key = URLEncoder.encode(m_key,"euc-kr");
} else {
	m_key="";
}

//---------------------------------- JDBC�� ���� ��ü ����
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
	//------------------------------- JDBC ����
	String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
	String jdbcId = "jspuser";
	String jdbcPw = "jsppass";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);
	
	//------------------------------- ������ ���� ������ ����
	String Query1 = "SELECT UsrName,UsrId, UsrMail, UsrZip1, UsrZip2, UsrAddr1, UsrAddr2, UsrTel1, UsrTel2, UsrTel3, UsrHp1, UsrHp2, UsrHp3 FROM member WHERE UsrId='"+user_id+"'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(Query1);
	rs.next();
	
	String name = rs.getString(1);
	String id = rs.getString(2);
	String mail = rs.getString(3);
	String zip1 = rs.getString(4);
	String zip2 = rs.getString(5);
	String addr1 = rs.getString(6);
	String addr2 = rs.getString(7);
	String tel1 = rs.getString(8);
	String tel2 = rs.getString(9);
	String tel3 = rs.getString(10);
	String hp1 = rs.getString(11);
	String hp2 = rs.getString(12);
	String hp3 = rs.getString(13);		
	
%>

<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="TEXT/HTML; CHARSET=euc-kr"/>
	<LINK REL="stylesheet" type="text/css" href="../include/style.css">
	<SCRIPT language="javascript" SRC="../include/scripts.js"></SCRIPT>
    <TITLE>ȸ����������</TITLE>

	<SCRIPT LANGUAGE="javascript">
	
	    function CheckMemberForm(form) {
	
    		if( (form.UserPass.value) || (form.ReUserPass.value)  ) {    			
	        	if(!form.UserPass.value){
	            	alert("�н����� �Է� ���� �н����带 �Է��ϼ���.");
	            	form.UserPass.focus();
	            	return;
	        	}		    		
	        	if(!form.ReUserPass.value){
	            	alert("�н����� ���Է� ���� �н����带 �Է��ϼ���.");
	            	form.ReUserPass.focus();
	            	return;
	        	}	
	        	if(!(form.UserPass.value==form.ReUserPass.value)){
	            	alert("�Էµ� �н����尡 ���� �ٸ��ϴ�.");
	            	form.UserPass.focus();
	            	return;
	        	}	        	
	    	}
	    	
			if(!form.UserMail.value){
				alert("���ڿ����ּҸ� �Է��ϼ���.");
				form.UserMail.focus();
				return;
			} else if(!isCorrectEmail('MemberModify', 'UserMail')){
				alert("���ڿ��������� �ùٸ��� �ʽ��ϴ�.");
				form.UserMail.focus();
				return;
			}
	
	        if(!form.ZipCode1.value){
	            alert("�����ȣ�� �ּҰ� �Էµ��� �ʾҽ��ϴ�.");
	            form.ZipCode1.focus();
	            return;
	        }
	
	        if(!form.UserTel1.value){
	            alert("��ȣ��ȣ(������ȣ)�� �Է��ϼ���.");
	            form.UserTel1.focus();
	            return;
	        }
	
	        if(!form.UserTel2.value){
	            alert("��ȣ��ȣ(��)�� �Է��ϼ���.");
	            form.UserTel2.focus();
	            return;
	        }
	
	        if(!form.UserTel3.value){
	            alert("��ȣ��ȣ(��ȣ)�� �Է��ϼ���.");
	            form.UserTel3.focus();
	            return;
	        }
	
	        if(form.UserHp1.selectedIndex==0){
	            alert("�޴����� ��Ż縦 �����ϼ���.");
	            return;
	        }
	
	        if(!form.UserHp2.value){
	            alert("�޴��� ��ȣ ���ڸ��� �Է��ϼ���.");
	            form.UserHp2.focus();
	            return;
	        }
	
	        if(!form.UserHp3.value){
	            alert("�޴��� ��ȣ ���ڸ��� �Է��ϼ���.");
	            form.UserHp3.focus();
	            return;
	        }
	
			form.submit();
		}
	    
	</SCRIPT>
    
</HEAD>

<BODY>

<TABLE WIDTH=620 HEIGHT=40 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>
	<TR BGCOLOR=#A0A0A0>
		<TD ALIGN=CENTER><FONT SIZE=4><B>ȸ�� ���� ����</B></FONT></TD>
	</TR>
</TABLE>

<FORM NAME="MemberModify" METHOD=POST ACTION="MemberModifyProc.jsp?CurrentPage=<%=m_cp%>&column=<%=m_column%>&key=<%=m_encoded_key%>">

<TABLE WIDTH=620 BORDER="1" CELLSPACING="0" CELLPADDING="2" ALIGN=CENTER>

	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>�̸�</B></TD>
		<TD WIDTH="500"><%=name%></TD>
	</TR>

  	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>���̵�</B></TD>
		<TD WIDTH="500"><%=id%> </TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>�н�����</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=PASSWORD NAME="UserPass" SIZE=20 MAXLENGTH=10>
			* �н����带 �����ϰ��� �� ��쿡�� �Է��ϼ���.
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>�н����� ���Է�</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=PASSWORD NAME="ReUserPass" SIZE=20 MAXLENGTH=10>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>���ڿ���</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="UserMail" SIZE=60 MAXLENGTH=90 style="ime-mode:inactive" VALUE='<%=mail%>'>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>�� ��</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="ZipCode1" SIZE=3 MAXLENGTH=3 READONLY onClick="javascript:alert('�����ȣ �˻���ư�� �̿��ϼ���')" VALUE='<%=zip1%>'> -
			<INPUT TYPE=TEXT NAME="ZipCode2" SIZE=3 MAXLENGTH=3 READONLY onClick="javascript:alert('�����ȣ �˻���ư�� �̿��ϼ���')" VALUE='<%=zip2%>'><BR>
			<INPUT TYPE=TEXT NAME="UserAddress1" SIZE=45 MAXLENGTH=110 READONLY onClick="javascript:alert('�����ȣ �˻���ư�� �̿��ϼ���')" VALUE='<%=addr1%>'>
			<IMG SRC="../images/btn_post_3.gif" BORDER=0 ALIGN=ABSMIDDLE STYLE=CURSOR:HAND onClick="javascript:AddressSearch('AddressSearch_1.jsp','MemberModify','SearchAddress',520,220,'yes')"><BR>&nbsp;
			������ �ּ�
			<INPUT TYPE=TEXT NAME="UserAddress2" SIZE=45 MAXLENGTH=110 VALUE='<%=addr2%>'>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>��ȭ��ȣ</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="UserTel1" SIZE=3 MAXLENGTH=3 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel1%>'> -
			<INPUT TYPE=TEXT NAME="UserTel2" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel2%>'> -
			<INPUT TYPE=TEXT NAME="UserTel3" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel3%>'>
		</TD>
	</TR>   
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>�޴���ȭ</B></TD>
		<TD WIDTH="500">
			<SELECT NAME="UserHp1" SIZE=1>
<%
			if( hp1.equals("010")) {			
				out.println("<OPTION VALUE=\"0\">��Ż�");
				out.println("<OPTION VALUE=\"010\" SELECTED>010");
				out.println("<OPTION VALUE=\"011\">011");
			} else if( hp1.equals("011")) {			
				out.println("<OPTION VALUE=\"0\">��Ż�");
				out.println("<OPTION VALUE=\"010\">010");
				out.println("<OPTION VALUE=\"011\" SELECTED>011");
			}
%>
			</SELECT> -
			<INPUT TYPE=TEXT NAME="UserHp2" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=hp2%>'> -
			<INPUT TYPE=TEXT NAME="UserHp3" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=hp3%>'>
		</TD>
	</TR> 
   
</TABLE>

</FORM>

<TABLE WIDTH=620 HEIGHT=50 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>

	<TR ALIGN=CENTER>
		<TD>		
			<IMG SRC="../images/btn_mdfy.gif" STYLE=CURSOR:HAND onClick="javascript:CheckMemberForm(MemberModify)">&nbsp;&nbsp;
			<IMG SRC="../images/btn_cancel.gif" STYLE=CURSOR:HAND onClick="javascript:location.replace('../board/BoardList.jsp?CurrentPage=<%=m_cp%>&column=<%=m_column%>&key=<%=m_encoded_key%>')">
		</TD>
	</TR>
	
</TABLE>

</BODY>
</HTML>

<%
	} catch(Exception e) {
		
		e.printStackTrace();
		
	} finally {
		rs.close();
		stmt.close();
		conn.close();
	}

%>