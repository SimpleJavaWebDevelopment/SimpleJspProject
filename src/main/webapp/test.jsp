<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Jsp</title>
</head>
<body>

<h3>Testing Jsp</h3>

<%!
public int add( int a , int b) {
	return a + b;
}
%>
<!-- ----------------------------------------------- -->
<br>
<%
int i = 1;
int j = 2;
int k = i+j;

%>

the value of k is : <%=k %>
<!-- ----------------------------------------------- -->
<br>
<% 
int m=add(123 , 321); 
%>

the value of sum of 123 + 321 is : <%=m %>
<!-- ----------------------------------------------- -->
<br>
<%
for ( int x= 0; x < 5; x++) {
	out.println("<br> value of x is" + x);
}
%>

<!-- ----------------------------------------------- -->
<br>
<%
for ( int y= 0; y < 5; y++) {
%>
	<br> New value of y is : <%=y %> 
<%
}
%>
<!-- ----------------------------------------------- -->
</body>
</html>