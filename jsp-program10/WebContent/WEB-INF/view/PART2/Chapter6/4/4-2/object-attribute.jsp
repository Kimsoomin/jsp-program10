<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	//request �⺻��ü�� �Ӽ� ����

	request.setAttribute("number", 210);
	request.setAttribute("name", "ȫ�浿");
	request.setAttribute("average", 95.6);
	
	out.println("request �⺻��ü�� �Ӽ� �� ����<HR>");
	
	Integer my_number = (Integer)request.getAttribute("number");
	String my_name = (String)request.getAttribute("name");
	double my_average = ((Double)request.getAttribute("average")).doubleValue();
	
	out.println("number : " + my_number + "<BR>");
	out.println("name : " + my_name + "<BR>");
	out.println("average : " + my_average + "<BR>");
	
%>	
