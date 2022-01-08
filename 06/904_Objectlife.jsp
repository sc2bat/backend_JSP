<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>904_Objectlife</title>
</head>
<body>
	<h1>
		<%
			pageContext.setAttribute("name", "page man");
			request.setAttribute("name", "request man");
			session.setAttribute("name", "session man");
			application.setAttribute("name", "application man");
			
			System.out.println("FirstPage.jsp : ");
			System.out.println("pageContext 객체 : " + pageContext.getAttribute("name"));
			System.out.println("request 객체 : " + request.getAttribute("name"));
			System.out.println("session 객체 : " + session.getAttribute("name"));
			System.out.println("application 객체 : " + application.getAttribute("name"));
			
			RequestDispatcher dp = request.getRequestDispatcher("905_Objectlife.jsp");
			dp.forward(request, response);
		%>
	</h1>
</body>
</html>