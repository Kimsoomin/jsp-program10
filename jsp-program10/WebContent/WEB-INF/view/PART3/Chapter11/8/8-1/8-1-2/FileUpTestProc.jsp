<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
// -------------------------- ���ε� ���丮 �̸�
String saveFolder = "upload_files";

//-------------------------- MultipartRequest ��ü ����
MultipartRequest multi = null;

//-------------------------- MultipartRequest Ŭ������ �Ķ���� ����
ServletContext context = getServletContext();
String realFolder = context.getRealPath(saveFolder);
out.println("������ : "+realFolder+"<br>");

int sizeLimit = 10*1024*1024;
String encType = "euc-kr";
DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

//-------------------------- MultipartRequest ��ü ����(���Ͼ��ε� �߻�)
multi = new MultipartRequest(request, realFolder, sizeLimit, encType, policy);

//-------------------------- ������ ����
String name = multi.getParameter("username");
int number = Integer.parseInt(multi.getParameter("usernumber"));

//-------------------------- ���ε�Ǿ� ������ ����� ���� �̸�
String filename = multi.getFilesystemName("userfile");
out.println("����� ���ϸ� : "+filename+"<br>");

//-------------------------- ���ε带 ������ ������ �̸�
String orginfilename = multi.getOriginalFileName("userfile");
out.println("���ε� ���ϸ� : "+orginfilename+"<br>");

//-------------------------- ������ ���ε�Ǹ� ����Ǵ� ����
if(filename != null) {	
	
	// -------------------------- <FORM>�� ���� �Է»��� �̸� 
	Enumeration files = multi.getFileNames();
	
	//-------------------------- Enumeration ��ü�� �ִ� ������ �̸��� ����	
	String fname = (String)files.nextElement();
	out.println("fname : " + fname + "<BR>");
	
	//-------------------------- �Է»��ڸ� ���� ���ε�� File ��ü�� ����	
	File file = multi.getFile(fname);
	
	//--------------------------������ ũ�� ��� (����Ʈ)
	int filesize = (int)file.length();
	out.println("������ ũ�� : "+filesize+"<br>");
	
	//--------------------------������ ���� ��� (MIME)
	String filetype = multi.getContentType(fname);
	out.println("������ Ÿ�� : "+filetype+"<br>");
	
}

%>