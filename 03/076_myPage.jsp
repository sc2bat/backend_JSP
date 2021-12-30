<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>076_myPage</title>
</head>
<body>
	<%
		if(session.getAttribute("loginUser")==null){
			response.sendRedirect("071_LoginForm.jsp");
		}else{
	%>
		아이디 : <%=session.getAttribute("loginUser") %> <br>
		성명 : 홍 <br>
		주소 : 서울 <br>
		전화번호 : 010-111 <br>
		주민등록번호 : 0101010 <br>
		<input type="button" value="정보수정"> <br>
	<%
		}
	%>			
</body>
</html>