<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_time</title>
</head>
<body>
	<h2>안녕하세요</h2>
	<h2>JAVA SERVER PAGE(JSP)</h2>
	<% java.util.Date d = new java.util.Date(); %>
	<!-- HTML 로 페이지를 구성하던 중, JSP 에 의한 컨텐츠가 중간에 나와야 한다면 필요한 곳에 JSP 명령을 씁니다 -->
	<%-- 현재 JSP 파일 안에 HTML 문법사이로 JSP 문법이 껴들어 코딩될 때는 <%%> 를 사용합니다 --%>
	<h2>현재시간 : <%= new java.util.Date() %></h2>
	<%-- 다만 페이지에 출력될 내용을 기술한다면 <%= %> 를 쓰고 변수명이나 출력할 내용을 씁니다 --%>
	
	<!-- 일반텍스트와 JSP 명령의 주석처리 -->
	<!-- 안녕하세요 -일반 텍스트 -->
	<%-- 안녕하세요 오늘은 	 <%= new java.util.Date() %> 입니다  --%>
	
	<%-- <%JSP 명령 %> : 명령의 실행 --%>
	<%-- <%변수 또는 출력 내용 %> : 웹페이지에 출력 --%>
	<!-- JSP : 서버에서 계산하거나 처리할 명령을 써서 실행시키고, 그 결과가 웹페이지에 JSP 문법에 의해 표시되는 페이지입니다 -->
	<h2><%= d %> => 계산된 현재날짜 시간을 body 의 해당 위치에 표시</h2>
	
	<!-- JSP 명령은 HTML 태그와 함께 파일로 저장되어 서버에 보관됩니다. 클라이언트의 요청을 받으면 해당 파일 (~.jsp)이 클라이언트로 전송되어 웹브라우저에 표시가 되게 되는데
	그 전에 jsp 명령은 이미 실행되어서 결과만 html 태그와 같이 전송되어 집니다. -->
</body>
</html>