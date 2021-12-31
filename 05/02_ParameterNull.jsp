<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_ParameterNull</title>
</head>
<body>
<%-- 	<h3> JSP 코드 : <% String id = request.getParameter("id"); %><%=id %></h3> --%>
	<h3> JSP 코드 : <%= request.getParameter("id") %></h3>
<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/05/02_ParameterNull.jsp?id=scott -->
<!-- id 에 입력값을 넣어주면 나옴 안넣어주면 null -->
	
	<h3>EL 코드 : ${id }</h3><!-- 	아무것도 안나옴 --> 

	<h3>EL 코드 : ${param.id }</h3><!-- 	EL 코드 : scott -->
	<!-- id 에 입력값을 넣어주면 나옴 안넣어주면 빈칸으로 출력 null 은 안나옴 -->
	
JSP 코드
<br>
request.getParameter("id").equals("hong") -> 에러 <br>
<%-- <%=request.getParameter("id").equals("hong") %> --%>
equals() 사용 결과 : error - equals 메소드는 "null 값" 으로 비교할 때 오류를 발생시킴
<br><br>
에러를 방지하기 위해 아래와 같은 연산를 사용 : <br>
request.getParameter("id")!=null && request.getParameter("id").equals("hong") => 
<%=request.getParameter("id")!=null && request.getParameter("id").equals("hong") %><!-- false 출력 -->

<br><br>
<hr>
EL 식
'==' 연산자 사용 결과 : \${param.id=="hong" } -> ${param.id=="hong" } <!--  false 출력 --> 
<br><br><br>
<hr>

equals() 를 사용할 때의 null 값 비교 오류해결 방법 : 
<pre>
	<!-- <pre> 태그 : 입력한 그대로를 화면에 보여주는 태그 : 주로 코딩 내역을 화면에 표시할 때 사용 -->
	if(request.getParameter("id")!=null){
		if(request.getParameter("id").equals("hong")){
		}
	}
</pre>








	
</body>
</html>