<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder"%>

<%
	String cnt = "asia";  
	String nation = URLEncoder.encode("���ѹα�","euc-kr");
%>

<script language="javascript">
	location.href = "<%=request.getContextPath() + "/jsp-control-href-to.jsp?cnt=" + cnt + "&nation=" + nation%>";
</script>