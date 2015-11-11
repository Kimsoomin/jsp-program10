<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLEncoder"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
//---------------------------------- �н������ ���ڵ� �ĺ��� ����
String passwd = request.getParameter("pass");
int rno = Integer.parseInt(request.getParameter("rno"));

//---------------------------------- ���� �� ��ü ����
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null; 

String encoded_key="";

//---------------------------------- Ű���� ������ ����
String column = request.getParameter("column");
if (column == null) column="";

String key = request.getParameter("key");
if(key!=null) {
	encoded_key = URLEncoder.encode(key,"euc-kr");
} else {
	key="";
}

try {
	//------------------------------- JDBC ����
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
	String jdbcId = "jspuser";
	String jdbcPw = "jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);

	//------------------------------- ���ڵ� �н����� ����
	String Query1 = "SELECT UsrPass FROM board WHERE RcdNo=?";
	pstmt = conn.prepareStatement(Query1);
	pstmt.setInt(1,rno);
	rs = pstmt.executeQuery();
	
	rs.next();
	String dbPass = rs.getString(1);
		
	if(passwd.equals(dbPass)) {
		
		String Query2 = "DELETE FROM board WHERE RcdNo=" + rno;
		pstmt = conn.prepareStatement(Query2);
		pstmt.executeUpdate(Query2);
		
		rs.close();
		pstmt.close();
		conn.close();
		
		String retUrl = "BoardList.jsp?column=" + column + "&key=" + encoded_key;
		response.sendRedirect(retUrl);
		
	} else {
		
		rs.close();
		pstmt.close();
		conn.close();		
		out.println("<script language=\"javascript\">");
		out.println("alert('�н����尡 �ٸ��ϴ�.')");
		out.println("history.back()");		
		out.println("</script>");	
		out.flush();
	}
	
} catch (SQLException e) {
	
	out.print(e);
	
} 
%>