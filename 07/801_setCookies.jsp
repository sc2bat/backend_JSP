<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>801_setCookies</title>
</head>
<body>
	<%
	Cookie c = new Cookie("id", "qwer");
	
	c.setMaxAge(365*24*60*60);
	
	response.addCookie(c);
	
	response.addCookie(new Cookie("pwd", "1234"));
	response.addCookie(new Cookie("age", "20"));
	%>
</body>
</html>