<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%!
	/** �� ���� ���� ���ϴ� sum_result */
	public int sum_result(int data1, int data2) {
		int sum = data1 + data2;
		return sum;
}
%>

<HTML>

	<HEAD>
		<TITLE>��ũ��Ʈ ����� ��</TITLE>
	</HEAD>
	
	<BODY>
	
	<%-- ���⼭���� ��ũ��Ʈ���� ���۵˴ϴ� --%>
	
	<%
	
		int num1 = 20;  // ���� num1�� 20�� ����
		int num2 = 40;  // ���� num2�� 40�� ����
		
		/*
			num1�� num2��� ������ �����ϰ� ���� �����մϴ�		
			sum_result()�� ����� num1�� num2�� ���� ���մϴ�
		*/
		int result = sum_result(num1, num2);
	
	%>

	<!-- ������ <%=num1%>�� <%=num2%>�� ���� ����ϴ� �����Դϴ� -->
	
	<%=num1%>�� <%=num2%>�� ���� <%=result%>�Դϴ�.	

	</BODY>
	
</HTML>