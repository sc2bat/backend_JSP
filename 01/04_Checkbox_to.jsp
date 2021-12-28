<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_Checkbox_to</title>
</head>
<body>
	<h3>String item</h3>
	<%
	 String item = request.getParameter("item");
	%>
	<%=item %>
	<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/01/04_Checkbox_to.jsp?item=shoes&item=bag&item=belt&item=cap&item=watch -->
<!-- 	여러개를 담고 있으면 어차피 하나만 저장됨 젤 첫번째 value 가 나옴  -->
<!-- 	shoes -->
	<hr>
	<h3>배열 사용</h3>
<!-- 따라서 배열 사용 -->
	<%
		String []items = request.getParameterValues("item");
	%>
	<%
		if(items==null){
	%>
		<h3>선택한 항목이 없습니다</h3>
	<%
		}else{
	%>
		<h3>선택된 항목입니다</h3>
	<%
		for(String it : items){
	%>
		<%=it %>&nbsp;&nbsp;
	<%
		}
	}
	%>
</body>
</html>