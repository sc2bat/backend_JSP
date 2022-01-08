<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>603_Action_to.jsp</title>
</head>
<body>
	<h3>get 방식으로 요청되어진 주소</h3>
	<h3>post 방식으로 요청되어진 주소</h3>
	
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwd_re = request.getParameter("pwd_re");
		
		String useritem = request.getParameter("useritem");
	%>
	<h3>성명 : <%=name %></h3>
	<h3> 아이디 : <%=id%></h3>
	<h3>비밀번호 : <%=pwd%></h3>
	<h3>비밀번호 확인 : <%=pwd_re%></h3>
	<h3>유저아이템 : <%=useritem %></h3>
	
	<h3>String item</h3>
	<%
		String item = request.getParameter("item");
	%><%=item %>
	<hr>
	<h3>배열 사용</h3>
	<%String []items = request.getParameterValues("item"); %>
	<%if(items == null){
		%>	<h3>선택한 항목 없음</h3>
	<%	}else{		%>
		<h3>선택한 항목</h3>
		<%
		for(String s : items){
		%>
		<%=s %> &nbsp;&nbsp;
		<%
		}
	}
	%>
	<hr>
	<h3>직업 테스트</h3>
	<%
		String job = request.getParameter("job");
		String []its= request.getParameterValues("interest");	%>	
	<h3>직업 <%=job %></h3>
	<% if(its == null){
			out.print("선택 항목없음");
	}else{
		for(String s : its){
	%><%=s %>,
	<%
		}
	}
	%>
	
	
	
</body>
</html>