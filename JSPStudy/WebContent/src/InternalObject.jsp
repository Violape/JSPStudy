<%@ page language="java"
	contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"
    buffer="10kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%-- out���ö����Ӧ�� --%>
<%	out.newLine();
	out.println("Print line 1");
	out.print("Print line 2");
	out.print("Print line 3<br/>");
	out.println("��������С��"+out.getBufferSize()+"<br/>");
	out.println("ʣ�໺������"+out.getRemaining()+"<br/>");
	out.flush();
	out.println("��������С��"+out.getBufferSize()+"<br/>");
	out.println("ʣ�໺������"+out.getRemaining()+"<br/>");
	out.clearBuffer();
	out.println("��������С��"+out.getBufferSize()+"<br/>");
	out.println("ʣ�໺������"+out.getRemaining()+"<br/>");%>
</body>
</html>