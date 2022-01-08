<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("rose") && pwd.equals("0124")){
		response.sendRedirect("806_loginOk.jsp?name=" + URLEncoder.encode("홍길동", "UTF-8"));
	}else{
		response.sendRedirect("806_loginForm.jsp");
	}
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>806_login_do.jsp</title>
</head>
<body>
	
</body>
</html>