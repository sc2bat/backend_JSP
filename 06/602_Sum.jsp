<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>602_Sum</title>
</head>
<body>
	<%
		int sum = 0;
		for(int i = 1; i <= 100; i++){
			sum+=i;
		}
	%>
	<h2><%=sum %></h2>
	<%
		sum = 0;
		for(int i = 1; i <= 100; i++){
			sum+=i;
	%>
	<h3><%=sum %></h3>
	<%
		}
	%>
</body>
</html>