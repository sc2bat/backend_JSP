<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>910_Format</title>
</head>
<body>
	<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
	<h2>\${now} : ${now}</h2>
	
	<h2>
		now : <fmt:formatDate value="${now }"/> <br>
		date : <fmt:formatDate value="${now }" type="date"/> <br>
		time : <fmt:formatDate value="${now }" type="time"/> <br>
		both : <fmt:formatDate value="${now }" type="both"/> <br>
	</h2>
	
	<hr>
	<br>
	<h2>
		default : <fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default" /> <br>
		short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short" /> <br>
		medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium" /> <br>
		long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long" /> <br>
		full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" /> <br>
		
		pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초" : 
		<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" />
	</h2>
	
	<h3>tomcat locale : <%=response.getLocale() %></h3>
	<fmt:setLocale value="ko_KR"/>
	<h3>locale kr : <%=response.getLocale() %></h3>
	
	<h3>
		kr currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
		kr number : <fmt:formatNumber value="1000.234" type="number" maxFractionDigits="2"></fmt:formatNumber> <br>
		<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
		Date : <fmt:formatDate value="${now }"/> 
	</h3>
	<hr>
	<h3>
		<fmt:setLocale value="en_US"/>
		en currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
		en number : <fmt:formatNumber value="1000.234" type="number" maxFractionDigits="2"></fmt:formatNumber> <br>
		<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
		Date : <fmt:formatDate value="${now }"/> 
	</h3>
	<hr>
	<h3>
		<fmt:setLocale value="ja_JP"/>
		jp currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
		jp number : <fmt:formatNumber value="1000.234" type="number" maxFractionDigits="2"></fmt:formatNumber> <br>
		<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
		Date : <fmt:formatDate value="${now }"/> 
	</h3>
	<hr>
	
	<fmt:requestEncoding value="UTF-8"/>
	
	
	
	
	
</body>
</html>