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
</body>
</html>