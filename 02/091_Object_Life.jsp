<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>091_Object_Life</title>
</head>
<body>
<h1>
	<%
	pageContext.setAttribute("name", "page man"); // pageContext : 현재 페이지까지
	request.setAttribute("name", "request man"); // request : 다음 페이지까지
	session.setAttribute("name", "session man"); // session : 브라우저가 닫힐 때까지
	application.setAttribute("name", "application man"); // application : 서버가 꺼지거나 리스타트 될때까지
	
	System.out.println("FirstPage.jsp : ");
	System.out.println("First 의 pageContext 객체 : " + pageContext.getAttribute("name"));
	System.out.println("First 의 request 객체 : " + request.getAttribute("name"));
	System.out.println("First 의 session 객체 : " + session.getAttribute("name"));
	System.out.println("First 의 application 객체 : " + application.getAttribute("name"));
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("092_ObjectLife.jsp");
	dispatcher.forward(request, response);
	%>
</h1>
</body>
</html>