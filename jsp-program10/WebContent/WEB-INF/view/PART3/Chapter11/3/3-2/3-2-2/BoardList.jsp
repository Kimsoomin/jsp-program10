<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="java.sql.*"%>

<%
//---------------------------------- ���� �� ��ü ����

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs1 = null;
ResultSet rs2 = null;

int TotalRecords = 0;

try {
	//------------------------------- JDBC ����
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
	String jdbcId = "jspuser";
	String jdbcPw = "jsppass";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);
	
	//------------------------------- ������ ������ ��ü�� ����
	String Query1 = "SELECT count(RcdNo) FROM board";
	String Query2 = "SELECT RcdNo, UsrSubject, UsrName, UsrDate, UsrRefer FROM board ORDER BY RcdNo DESC";
	
	pstmt = conn.prepareStatement(Query1);
	rs1 = pstmt.executeQuery();
	pstmt = conn.prepareStatement(Query2);
	rs2 = pstmt.executeQuery();	
	
	//------------------------------- ��ü ���ڵ� �� ����
	rs1.next();
	TotalRecords = rs1.getInt(1);
	
%>	

<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="TEXT/HTML; CHARSET=euc-kr"/>
	<LINK REL="stylesheet" type="text/css" href="../include/style.css"/>	
	<TITLE>�Խñ� ����Ʈ</TITLE>
</HEAD>

<BODY>

<TABLE WIDTH=620 HEIGHT=40 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>
	<TR BGCOLOR=#A0A0A0>
		<TD ALIGN=CENTER><FONT SIZE=4><B>�Խ��� ( ����Ʈ )</B></FONT></TD>
	</TR>
</TABLE>

<%
//------------------------------- JSP CODE START ( ���� ������ ���� ���� ���� )
	String member_id = (String)session.getAttribute("member_id");
	if(member_id == null) {
%>
		<%-- <jsp:include page="../member/LoginForm.jsp"/> --%>
<% 
	} else { 
%>		
		<%-- <jsp:include page="../member/LoginState.jsp"/>	 --%>
<% 
	}
%>
 
<TABLE WIDTH=620 BORDER=1 CELLSPACING=0 CELLPADDING=1 ALIGN=CENTER>

	<TR ALIGN=CENTER>
		<TD WIDTH=45><B>��ȣ</B></TD>
		<TD WIDTH=395><B>����</B></TD>
		<TD WIDTH=65><B>�ۼ���</B></TD>
		<TD WIDTH=70><B>�ۼ���</B></TD>
		<TD WIDTH=45><B>����</B></TD>
	</TR>
	
<%
	//------------------------------- ��ȯ���� �̿��� ���ڵ� ��� ����
	while(rs2.next()) {
		
		//--------------------------- �ʵ� ������ ����� ���
		int rno = rs2.getInt("RcdNo");
		
		String subject = rs2.getString("UsrSubject");
	
		String name = rs2.getString("UsrName");
		
		long date = rs2.getLong("UsrDate");	
		SimpleDateFormat Current = new SimpleDateFormat("yyyy/MM/dd"); 
		String today = Current.format(date); 
	
		int refer = rs2.getInt("UsrRefer");
%> 	

	<TR>	
		<TD WIDTH=45 ALIGN=CENTER><%=TotalRecords%></TD>
		<TD WIDTH=395 ALIGN=LEFT><A HREF="BoardContent.jsp"><%=subject%></A></TD>
		<TD WIDTH=65 ALIGN=CENTER><%=name%></TD>
		<TD ALIGN=CENTER><%=today%></TD>
		<TD ALIGN=CENTER><%=refer%></TD>
	</TR>
		
<%
	//------------------------------- ��ȯ���� �̿��� ���ڵ� ���  ����
	TotalRecords--;
}
%> 

</TABLE>

<FORM NAME="BoardSearch" METHOD=POST action="BoardList.jsp">

<TABLE WIDTH=620 HEIGHT=50 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>

	<TR>
		<TD ALIGN=LEFT WIDTH=100>
			<IMG SRC="../images/btn_new.gif" onClick="javascript:location.replace('BoardWrite.jsp')"; STYLE=CURSOR:HAND>
		</TD>
		<TD WIDTH=320 ALIGN=CENTER>
			<IMG SRC="../images/btn_bf_block.gif">&nbsp;
			<IMG SRC="../images/btn_bf_page.gif">&nbsp;    	
			1&nbsp;&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;5&nbsp;&nbsp;6&nbsp;&nbsp;7&nbsp;&nbsp;8&nbsp;&nbsp;9&nbsp;&nbsp;10&nbsp;
			<IMG SRC="../images/btn_nxt_page.gif">&nbsp; 
			<IMG SRC="../images/btn_nxt_block.gif">    	    		     
		</TD>
		<TD WIDTH=200 ALIGN=RIGHT>
			<SELECT NAME="column" SIZE=1>
				<OPTION VALUE="" SELECTED>����</OPTION>
				<OPTION VALUE="UsrSubject">����</OPTION>
				<OPTION VALUE="UsrContent">����</OPTION>
			</SELECT> 
			<INPUT TYPE=TEXT NAME="key" SIZE=10 MAXLENGTH=20> 
			<IMG SRC="../images/btn_search.gif" ALIGN=absmiddle STYLE=CURSOR:HAND>
		</TD>    
	</TR>
	
</TABLE>

</FORM>

<%
}
catch (SQLException e) {
	
	e.printStackTrace();
	
} finally {
	//------------------------------- ������ ��ü ����
	rs2.close();
    rs1.close();
    pstmt.close();
    conn.close();	
}
%>
</BODY>
</HTML>