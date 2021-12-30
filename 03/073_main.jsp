<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>073_main</title>
</head>
<body>
	<%
		if(session.getAttribute("loginUser") == null){ // 로그인한 사람이 없으니까 null 값이니까 
			response.sendRedirect("071_LoginForm.jsp"); // 로그인 창으로 되돌아 옵니다.	
		}else{
	%>
			로그인 관리자<br>전화번호 010-1234-1234
			<%=session.getAttribute("loginUser") %> 님 안녕하세요! <br> 
			홈페이지 방문 <br> 즐거운 시간 <br>
			<form method="get" action="075_myPage_do.jsp">
				<input type="submit" value="마이페이지">
			</form>
			<form method="get" action="074_logout.jsp">
				<input type="submit" value="로그아웃">
			</form>
	<%
		}
	%>
</body>
</html>