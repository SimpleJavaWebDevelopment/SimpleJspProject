<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo of default objects</title>
</head>
<body>
<h1>Demo of default objects in JSP ( Request, Session, Application and PageContext)</h1>
<%
	String userNameInRequest = request.getParameter("userName");
	if (null != userNameInRequest && "" != userNameInRequest) {
		/* HttpSession is  SessionContext */
		session.setAttribute("sessionUserName", userNameInRequest);
		/* ServletContext is applicationcontext */
		application.setAttribute("applicationUserName", userNameInRequest);
		pageContext.setAttribute("pageContextUserName", userNameInRequest);
		/* this will store in both application and Request/session/application/ scope */
/* 		pageContext.setAttribute("pageContextUserName", userNameInRequest, PageContext.PAGE_SCOPE);
		pageContext.setAttribute("pageContextUserName", userNameInRequest, PageContext.REQUEST_SCOPE);
		pageContext.setAttribute("pageContextUserName", userNameInRequest, PageContext.SESSION_SCOPE); */
		pageContext.setAttribute("pageContextUserName", userNameInRequest, PageContext.APPLICATION_SCOPE);
		//pageContext.findAttribute(arg0)
	}
%>

<br> 
User Name in request object is : <%=userNameInRequest %>
<br> 

User Name in session object is : <%=session.getAttribute("sessionUserName")  %>
<br> 

User Name in application context is : <%=application.getAttribute("applicationUserName") %>
<br> 

User Name in pageContext object is : <%=pageContext.getAttribute("pageContextUserName") %>

</body>
</html>