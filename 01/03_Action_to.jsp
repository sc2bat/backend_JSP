<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action_to</title>
</head>
<body>
	<h3>get 방식으로 요청되어진 주소</h3>
	<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?name=123&id=123&pwd=123&pwd_re=123</h3>

	<h3>POST 방식으로 요청되어진 주소</h3>
	<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp</h3>

	<!-- 	위 주소를 이용해 서버에 요청이 전달되면 해당페이지(03_Action_to.jsp)가 내부에 포함된 JSP 명령을 실행 후
	클라이언트 다운로드되어 웹브라우저에 보여지게 됩니다. 이 과정에서 Parameter 로 전달되는 name과 value 들이
	서버에서 JSP 명령의 피연산자(연산의 대상)이 될 수 있습니다 -->
	
<!-- 요청방식 -->
<!-- 	http://주소/경로/파일이름.jsp?첫번째전달요소의name=전달값&두번째요소name=전달값... -->
<!-- 	한글은 인코딩 방식에 따라 위와 같이 %16진수값으로 표시될 수 있습니다 -->
<!-- 	post 방식은 회원 가입이나 로그인할 때 입력한 비밀번호 또는 개인정보 등의 노출을 차단하고자 할때 사용하는 방식입니다 -->

<!-- 아래는 서버에서 실행되어 HTML5 로 구성될 내용들 입니다 -->
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String pwd_re = request.getParameter("pwd_re");
	
	String useritem = request.getParameter("useritem");
%>
<h3>성명 : <%=name %></h3>
<h3>아이디 : <%=id %></h3>
<h3>비밀번호 : <%=pwd %></h3>
<h3>비밀번호 확인 : <%=pwd_re %></h3>
<h3>유저아이템 : <%=useritem %></h3>

<!-- http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?name=qwer&id=qwer21&pwd=12&pwd_re=12 -->
<!-- 성명: qwer 아이디: qwer21 비밀번호: 12 비밀번호 확인: 12 -->
</body>
</html>