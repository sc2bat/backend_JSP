<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_Select_to</title>
</head>
<body>
	<%
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
	%>
	<h1>당신이 선택한 직업 : <%=job %></h1>
	<br> <br> <br>
	<h1>당신이 선택한 관심분야</h1>
	<h1>
		<%
			if(interests==null){
				out.print("선택한 항목이 없습니다");
			}else{
				for(String interest : interests){
		%>
					<%=interest %>,
		<%
				}
			}
		%>
		
<!-- 		http://localhost:8090/WEB07_JSP_SERVLET/01/05_Select_to.jsp?job=%EC%BB%B4%ED%93%A8%ED%84%B0%2F%EC%9D%B8%ED%84%B0%EB%84%B7&interest=%EB%A1%9C%EC%8A%A4%ED%8C%85&interest=%EC%9B%90%EB%91%90 -->
	</h1>
</body>
</html>