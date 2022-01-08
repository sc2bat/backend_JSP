<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>906_Objectlife.jsp</title>
</head>
<body>
	<h1>
		third pageContext 속성 : <%=pageContext.getAttribute("name") %> <br>
		third request 속성 : <%=request.getAttribute("name") %> <br>
		third session 속성 : <%=session.getAttribute("name") %> <br>
		third application 속성 : <%=application.getAttribute("name") %> <br>
	</h1>
</body>
</html>