<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>   

<HTML>

<HEAD>
	<META http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<TITLE>Insert title here</TITLE>
</HEAD>

<BODY>
<%

Connection conn = null;

try {
	
	Class.forName("com.mysql.jdbc.Driver");
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/mysql";
	String jdbcId = "root";
	String jdbcPw = "rootpass";
	
	conn = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPw);
	
	out.println("�����ͺ��̽� ���� ����");
	
} catch(SQLException e){
	
	out.println("�����ͺ��̽� ���� ����");
	e.printStackTrace();
	
} finally {
	
	conn.close();
}

%>
</BODY>

</HTML>