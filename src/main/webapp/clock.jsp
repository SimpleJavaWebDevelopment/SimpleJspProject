<%@ page language="java" 
	contentType="text/html; 
	charset=UTF-8"
    pageEncoding="UTF-8"
    %>
    <!-- above lines are page directive -->
    <%@ page import="java.util.Date"%>
    <!-- above lines are page directive -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clock</title>
</head>
<body>
<!-- way to include another JSP , provide relative path  -->
<%@ include file="/hello.jsp" %>

<b>the time is <%=new Date() %>

</body>
</html>