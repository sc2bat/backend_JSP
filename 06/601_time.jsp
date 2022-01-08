<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>601_time</title>
</head>
<body>
	<h2>안녕하세요</h2>
	<h2>JAVA SERVER PAGE(JSP)</h2>
	<% java.util.Date d = new java.util.Date(); %>
	<h2>현재시간 : <%=new java.util.Date() %></h2>
	
	<h2><%=d %> => 계산된 현재날짜 시간을 body 의 해당 위치에 표시</h2>	
</body>
</html>