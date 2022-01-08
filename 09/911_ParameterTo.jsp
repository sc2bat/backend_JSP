<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>911_ParameterTo.jsp</title>
</head>
<body>
	info <br>
	id : <%=request.getParameter("id") %> <br>
	pwd : <%=request.getParameter("pwd") %> <br>
	<hr>
	EL <br>
	id : ${param.id } <br>
	pwd : ${param["pwd"] } <br>
</body>
</html>