<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Init Param</title>
</head>
<body>

<%!
public void jspInit() {
	/* ServletConfig is passed by tomocat on servlet initatilization 
	usually its static configuration properties */
	String defaultUser = getServletConfig().getInitParameter("defaultUser");
	/* ServletContext is applicationcontext */
	ServletContext context = getServletContext();
	context.setAttribute("defaultUser", defaultUser);
}

%>
<br><b>
The default user name from servlet init is :
<%=getServletConfig().getInitParameter("defaultUser")%>
<br><b>
The default user name from servlet context is :
<%=getServletContext().getAttribute("defaultUser")%>
</body>
</html>