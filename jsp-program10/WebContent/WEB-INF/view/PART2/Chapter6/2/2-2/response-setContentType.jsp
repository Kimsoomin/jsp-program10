<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<%

	response.setContentType("image/jpeg");
	String filename = application.getRealPath("/") + "global.jpg";
	
	out.clear();
	pageContext.pushBody();
	
	FileInputStream fis = new FileInputStream(filename);
	BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
	
	byte[] data = new byte[1024]; 
	
	int count = 0;
	while((count = fis.read(data)) != -1){
		bos.write(data);
	}
	
	fis.close();
	bos.close();

%>