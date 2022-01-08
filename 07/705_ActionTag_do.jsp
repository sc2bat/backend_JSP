<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = request.getParameter("userid");
	String pwd = request.getParameter("userpwd");
	String loginCheck = request.getParameter("loginCheck");
%>


<!-- response.sendRedirect -->
<%/*
	if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("user")){
		response.sendRedirect("705_ActionUser.jsp?userid=" + id + "&userName=" + URLEncoder.encode("qwer", "UTF-8"));
	}else if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("admin")){
		response.sendRedirect("705_ActionAdmin.jsp?userid=" + id + "&userName=" + URLEncoder.encode("ADMIN", "UTF-8"));
	}else{
		response.sendRedirect("704_ActionTagForm.jsp");
	}*/
%>

<%
// 	forward
/*
	String url = null;
	if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("user")){
		url = "705_ActionUser.jsp";
		request.setAttribute("userName", "forward user");
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response);
	}else if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("admin")){
		url = "705_ActionAdmin.jsp";
		request.setAttribute("userName", "forward admin");
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response);
	}else{
		response.sendRedirect("704_ActionForm.jsp");
	}*/
%>

<%
// Action Tag
	if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("user")){
%>
	<jsp:forward page="705_ActionUser.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("at user", "UTF-8") %>'/>
	</jsp:forward>
<% 
	}else if(id.equals("rose") && pwd.equals("1234") && loginCheck.equals("admin")){
%>
	<jsp:forward page="705_ActionAdmin.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("at admin", "UTF-8") %>'/>
	</jsp:forward>
<%
	}else{
		response.sendRedirect("704_ActionTagForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>705_ActionTag_do.jsp</title>
</head>
<body>

</body>
</html>