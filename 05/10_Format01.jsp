<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_Format01</title>
</head>
<body>
<!-- 오늘날짜 발생 및 변수에 저장 -->
	<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
<!-- 일반적인 출력 -->
	<h2>\${now } : ${now }</h2><%-- ${now } : Mon Jan 03 11:19:27 KST 2022 --%>
	
<!-- JSTL 포맷팅에 의한 출력 -->
	<h2>
		<fmt:formatDate value="${now }"></fmt:formatDate> <br><!-- 2022. 1. 3. -->
		date : <fmt:formatDate value="${now }" type="date"></fmt:formatDate> <br><!-- date : 2022. 1. 3. -->
		time : <fmt:formatDate value="${now }" type="time"></fmt:formatDate> <br><!-- time : 오전 11:33:11 -->
		both : <fmt:formatDate value="${now }" type="both"></fmt:formatDate> <br><!-- both : 2022. 1. 3. 오전 11:33:11 -->
		both : <fmt:formatDate value="${now }" type="both"/> <br><!-- 단일 태그로도 사용할 수 있다 -->
	</h2>
	<br><br>
	<h2>
		default : <fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default"/> <br>
	<!-- 	default : 2022. 1. 3. 오전 11:39:08 -->
		short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short"/> <br>
	<!-- short : 22. 1. 3. 오전 11:46 -->
		medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium"/> <br>
	<!-- medium : 2022. 1. 3. 오전 11:46:02 -->
		long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long"/> <br>
	<!-- long : 2022년 1월 3일 오전 11시 46분 2초 KST -->
		full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <br>
	<!-- full : 2022년 1월 3일 월요일 오전 11시 46분 2초 대한민국 표준시 -->
	
		pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초" : <fmt:formatDate value="${now }" pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초"/> <br>
	<!-- pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초" : 2022년 01월 03일 11시 51분 00초 -->
	</h2>
	
	<br><br>
</body>
</html>