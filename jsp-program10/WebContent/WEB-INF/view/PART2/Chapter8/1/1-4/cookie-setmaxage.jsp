<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	// ��Ű id�� ���ӽð��� 20�ʷ� ����
	Cookie mycookie1 = new Cookie("id","hong");
	mycookie1.setMaxAge(20);
	response.addCookie(mycookie1);
	
	// ��Ű id�� ���ӽð��� ������ �����ð����� ����
	Cookie mycookie2 = new Cookie("name","gildong");
	mycookie1.setMaxAge(-1);
	response.addCookie(mycookie2);

%>

<A HREF="cookie-setmaxage-view.jsp">��Ű ���</A>