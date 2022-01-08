<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>903_ForwardResult</title>
</head>
<body>
	<%
		String age = request.getParameter("age");
		String name =(String)request.getAttribute("name");
	%>
	<h1>forward 방식 이동 페이지</h1>
	<h1>나이 : <%=age %></h1>
	<h1>이름 : <%=name%></h1>
	
</body>
</html>