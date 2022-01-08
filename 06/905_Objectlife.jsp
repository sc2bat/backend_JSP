<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>905_Objectlife</title>
</head>
<body>
	<h1>
		second pageContext 속성 : <%=pageContext.getAttribute("name") %> <br>
		second request 속성 : <%=request.getAttribute("name") %> <br>
		second session 속성 : <%=session.getAttribute("name") %> <br>
		second application 속성 : <%=application.getAttribute("name") %> <br>
		<a href="906_Objectlife.jsp">third</a>		
	</h1>
</body>
</html>