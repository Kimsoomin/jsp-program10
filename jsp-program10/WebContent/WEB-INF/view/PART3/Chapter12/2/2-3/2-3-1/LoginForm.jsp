<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder"%>

<%
	//---------------------------------- 페이지 정보 추출	
	int m_cp = Integer.parseInt(request.getParameter("CurrentPage"));

	//---------------------------------- 키워드 데이터 추출	
	String m_column = request.getParameter("column");
	if (m_column == null) m_column="";	
	
	String m_encoded_key=null;
	
	String m_key = request.getParameter("key");
	if(m_key!=null) {
		m_encoded_key = URLEncoder.encode(m_key,"euc-kr");
	} else {
		m_key="";
	}	
%>

<SCRIPT language="javascript" SRC="../include/scripts.js"></SCRIPT>

<FORM NAME="Login" METHOD=POST ACTION="#">

<TABLE WIDTH=620 BORDER=0 ALIGN=CENTER CELLSPACING=0 CELLPADDING=0>

	<TR>
		<TD ALIGN=CENTER WIDTH=320>
			아이디 <INPUT TYPE=TEXT NAME="UserId" SIZE=10 MAXLENGTH=20>&nbsp;&nbsp;
			패스워드 <INPUT TYPE=PASSWORD NAME="UserPass" SIZE=10 MAXLENGTH=20>
			<IMG SRC="../images/btn_login.gif" WIDTH=41 HEIGHT=22 ALIGN=ABSBOTTOM STYLE=CURSOR:HAND>
		</TD>    
		<TD ALIGN=RIGHT WIDTH=300>
			<IMG SRC="../images/btn_idpw_srch.gif" STYLE=CURSOR:HAND>
			<IMG SRC="../images/btn_be_member.gif" onClick="javascript:location.replace('../member/BeMember.jsp?CurrentPage=<%=m_cp%>&column=<%=m_column%>&key=<%=m_encoded_key%>')" STYLE=CURSOR:HAND>
		</TD>		
	</TR>
	
</TABLE>

</FORM>