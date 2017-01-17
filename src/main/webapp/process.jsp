<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Display User Info</title>
</head>
<body>

<jsp:useBean id="user" class="org.kaushik.javabrains.dto.User" scope="request">
<!-- property userName is member in User class and param userName is passed by login.jsp  
-->
	<%-- <jsp:setProperty property="userName" name="user" param="userName"/> --%>
	
	<!-- short cut 1 : if name of property and param matches then we don't have to pass param
	in this case like userName  -->
	<%-- <jsp:setProperty property="userName" name="user" /> --%>
	
	<!-- short cut 1 : set all the property from the form in user Bean from request parameter -->
	<jsp:setProperty property="*" name="user" />
	
</jsp:useBean>
<h3> User Info provided on registration form </h3>
<br>User Id  :  <jsp:getProperty property="userId" name="user"/>
<br>User Name:  <jsp:getProperty property="userName" name="user"/>
<br>Address 1:  <jsp:getProperty property="address1" name="user"/>
<br>Address 2:  <jsp:getProperty property="address2" name="user"/>
<br>City     :  <jsp:getProperty property="city" name="user"/>
<br>State    :  <jsp:getProperty property="state" name="user"/>
<br>Pin Code :  <jsp:getProperty property="pinCode" name="user"/>
<br>Password :  <jsp:getProperty property="password" name="user"/>


</body>
</html>