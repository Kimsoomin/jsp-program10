<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
	out.println("jsp-include-parameter-from.jsp ������ ù ��° �����Դϴ�.<HR><BR>");	
%>

	<jsp:include page="jsp-include-parameter-to.jsp" flush="true">
    	 <jsp:param name="korea" value="SEOUL"/>
     	<jsp:param name="japan" value="����"/>
	</jsp:include>
	
<% 
	out.println("<HR>jsp-include-parameter-from.jsp ������ ������ �����Դϴ�.");
%>	