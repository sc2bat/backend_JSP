<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>705_ActionAdmin</title>
</head>
<body>
	<h1>Admin</h1>
	<%
// 	response.sendRedirect
// 	String name = request.getParameter("userName");
	
	//forward
// 	String name = (String)request.getAttribute("userName");
	
	//Action tag
	String userName = URLDecoder.decode(request.getParameter("userName"), "UTF-8");
	out.print(userName);
	%>
	
	<%=request.getParameter("userid") %> Hello
</body>
</html>