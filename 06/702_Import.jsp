<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>702_Import</title>
</head>
<body>
	<%
		Calendar date = Calendar.getInstance();
		SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
	%>
	<h1>오늘은 <%Date d = date.getTime();
	out.print(today.format(d));%></h1>
	<%out.print(now.format(date.getTime())); %>
	
	<hr> <br><br>
	컨텍스트 패스 : <%= request.getContextPath() %> <br>
	요청방식 : <%= request.getMethod() %> <br>
	요청한 URL : <%= request.getRequestURL() %> <br>
	요청한 URI : <%= request.getRequestURI() %> <br>
	서버의 이름 : <%= request.getServerName() %> <br>
	프로토콜 : <%= request.getProtocol() %> <br>
</body>
</html>