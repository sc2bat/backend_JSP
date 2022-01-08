<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>703_Servlet2</title>
</head>
<body>
<%
	String id = (String)request.getAttribute("id");
	String pwd = (String)request.getAttribute("pwd");
	String gender = (String)request.getAttribute("gender");
	String email = (String)request.getAttribute("email");
	String content = (String)request.getAttribute("content");
	String []items = (String [])request.getAttribute("item");
	String job = (String)request.getAttribute("job");
	String []interests = (String [])request.getAttribute("interest");
%>
id : <%=id %> <br> 
pwd : <%=pwd %> <br> 
gender : <%=gender %> <br> 
email : <%=email %> <br>
content : <%=content %> <br>
items : <%for(String s : items){
	%><%=s + " " %>
<%}%> <br>
job : <%=job %> <br>
interests : <%for(String s : interests){
	%><%=s + " " %>	
<%} %>
</body>
</html>