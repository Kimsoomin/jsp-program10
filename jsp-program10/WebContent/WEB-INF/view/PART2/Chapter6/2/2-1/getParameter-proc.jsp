<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr");%>

<%
    int num = Integer.parseInt(request.getParameter("num"));
    String name = request.getParameter("name");
    float score = Float.parseFloat(request.getParameter("score"));

    out.println("��ȣ�� " + num + "�Դϴ�.<BR>");
    out.println("�̸��� " + name + "�Դϴ�.<BR>");
    out.println("������ " + score + "�Դϴ�.<BR>");
%>