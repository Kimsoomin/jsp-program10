<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr");%>

<%
    out.println("<h2> �������ݰ� URL ���� ����</h2><hr>");
%>    
    1. Ŭ���̾�Ʈ IP �ּ�: <%= request.getRemoteAddr() %> <br/>
    2. ��û �޼���: <%= request.getMethod() %> <br/>
    3. ��������: <%= request.getProtocol() %> <br/>
    4. ���� ȣ��Ʈ �̸�: <%= request.getServerName() %> <br/>
    5. ���� ��Ʈ: <%= request.getServerPort() %> <br/>
    6. ��û URI: <%= request.getRequestURI() %> <br/>
    7. ��û URL: <%= request.getRequestURL() %> <br/>
    8. ��û URL�� ���� ��Ʈ��: <%= request.getQueryString() %> <br/>
    9. ���ؽ�Ʈ �н� ����: <%= request.getContextPath() %> <br/>
