<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>112_JSP_Servlet_Ex02</title>
</head>
<body>
	<%
		String id = (String)request.getAttribute("id");
		String pwd = (String)request.getAttribute("pwd");
		String gender = (String)request.getAttribute("gender");
		String chk_mail = (String)request.getAttribute("chk_mail");
		String content = (String)request.getAttribute("content");
		String []items = (String [])request.getAttribute("items");
		String job = (String)request.getAttribute("job");
		String []interests = (String [])request.getAttribute("interest");
	%>
	아이디 : <%=id %> <br>
	비밀번호 : <%=pwd %> <br>
	성별: <%=gender %> <br>
	메일 정보 수신 여부 : <%=chk_mail %> <br>
	가입인사 : <%=content %> <br>
	구입항목 : <%for(String s : items) {
	%>
		<%=s+" "%>
	<%
	}
	%> <br>
	직업 : <%=job %> <br>
	관심분야 : <% for(String s : interests)out.print(s+" "); %> <br>
	관심분야 : <% for(String s : interests){
		%>
		<%=s + " " %>
	<%
	}
	%>
	 
<%-- 	out.print(s):<%=s %> 와 같은 명령 --%>
	
	
</body>
</html>