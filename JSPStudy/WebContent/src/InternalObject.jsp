<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="10kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%-- out内置对象的应用 --%>
<%	//输出文本，尤其注意换行符的使用
	out.newLine();
	out.println("Print line 1");
	out.print("Print line 2");
	out.print("Print line 3<br/>");
	//输出缓冲区大小和剩余大小
	out.println("缓冲区大小："+out.getBufferSize()+"<br/>");
	out.println("剩余缓冲区："+out.getRemaining()+"<br/>");
	//flush操作，注意缓冲区
	//out.flush();
	//clearbuffer操作，注意缓冲区
	//out.clearBuffer();
	//clear操作与clearBuffer类似，但是不可用于flush之后
	//以上out操作会影响后面的自动刷新功能
%>
<%-- request内置对象的应用 --%>
<%-- 新建一个表单，包含一个输入框和一个按钮 --%>
<form action="" method="post">
	<input type="text" name="username"/>
	<input type="submit" value="提交"/>
</form>
<%-- request相关功能 --%>
请求方法：<%= request.getMethod() %><br/>
请求文件：<%= request.getRequestURI() %><br/>
请求协议：<%= request.getProtocol() %><br/>
服务器地址：<%= request.getServerName() %><br/>
服务器端口：<%= request.getServerPort() %><br/>
远程地址：<%= request.getRemoteAddr() %><br/>
远程端口：<%= request.getRemoteHost() %><br/>
获取表单参数：<%= request.getParameter("username") %><br/>
<%-- response内置对象的应用 --%>
<%	response.setHeader("Cache-Control", "no-cache"); //不会被存储进入缓存，可有public, private等
	response.setIntHeader("Refresh", 2);//每隔2秒自动刷新一次
	out.println("date is "+new java.util.Date().toString());//显示当前时间
	//response.sendRedirect("http://github.com/Violape"); //直接跳转，不保留在原网页中
	//以下为cookie操作
	Cookie myCookie = new Cookie("a","b");//关键字为a,值为b
	myCookie.setMaxAge(3600);//最大存活时间为1小时
	response.addCookie(myCookie);//添加Cookie
%>	
<%-- page内置对象的应用 --%>
<%	out.println("page对象的字符串："+page.toString());
%><br/>
<%-- exception内置对象的应用 --%>
<%	//out.println(exception.getMessage());
	//out.println(exception.toString());
	//out.println(exception.printStackTrace());
%><br/>
<%-- pagecontext内置对象的应用 --%>
<%
	JspWriter myOut = pageContext.getOut();
	myOut.println("Hello world!");
%><br/>
<%
	pageContext.setAttribute("username", "Violape", pageContext.SESSION_SCOPE);
	String value = session.getAttribute("username").toString();
	out.println(value);
%><br/>
</body>
</html>
