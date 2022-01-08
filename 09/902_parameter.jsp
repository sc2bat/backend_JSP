<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>902_parameter</title>
</head>
<body>
	<%		String id = request.getParameter("id");	%>
	<h3>jsp <%=id %></h3>
	<h3>jsp <%=request.getParameter("id") %></h3>
	<h3>EL : ${id }</h3>
	<h3>EL : ${param.id }</h3>
	
	<%=request.getParameter("id") != null && request.getParameter("id").equals("qwer") %>
<!-- 	false -->
<br> <br>
<hr>

EL '=='
\${param.id=="qwer" } -> ${param.id=="qwer" }
<br> <br>
<hr>
<pre>
	if(request.getParameter("id") != null){
		if(request.getParameter("id").equals("qwer")){
		}
	}
</pre>
<hr>







</body>
</html>