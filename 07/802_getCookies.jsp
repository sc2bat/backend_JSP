<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>802_getCookies</title>
</head>
<body>
	<%
	Cookie []cookies = request.getCookies();
	for(Cookie c : cookies){
		out.println("<h2>" + c.getName() + " : " + c.getValue() + "<br><h2>");
	}
	%>
</body>
</html>