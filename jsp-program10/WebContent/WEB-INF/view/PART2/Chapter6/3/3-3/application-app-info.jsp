<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*" %>
<%

	// getMimeType(), getResource(), getRealPath() �޼ҵ��� ��
	
	out.println("getMimeType, getResource, getRealPath ���� ���<HR>");
	out.println("global.jpg�� MIME Ÿ�� : " + application.getMimeType("global.jpg") + "<BR>");
	out.println("��Ʈ�� URL ���� : " + application.getResource("/") + "<BR>");
	out.println("��Ʈ�� ���� ��� : " + application.getRealPath("/") + "<BR><BR><BR>");
	
	// getResourceAsStream() �޼ҵ��� ��

	String PathAndName = "./mydata.txt";
	
	char[] my_buff = new char[512];
	int length = -1;

	InputStreamReader isr =  new InputStreamReader(application.getResourceAsStream(PathAndName));
	BufferedReader br = new BufferedReader(isr);
	
	out.println("mydata.txt�ǳ��� ���<HR>");

	while( (length = br.read(my_buff)) != -1) { 
		out.println(new String(my_buff, 0, length));
	}
	
	br.close();
	isr.close();

%>