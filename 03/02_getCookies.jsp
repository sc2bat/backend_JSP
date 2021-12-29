<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_getCookies</title>
</head>
<body>
<%
	Cookie []cookies = request.getCookies(); // 쿠키 내용 한번에 다 얻어오는 명령
	for(Cookie c : cookies){
		out.println("<h2>" + c.getName() + " : " + c.getValue() + "<br><h2>");
	}
// 	모두 보려면 01_setCookies.jsp 를 먼저 실행하고 실행해야 함
// 	02_getCookies.jsp 만 실행하면 id 만 나옴
%>
</body>
</html>