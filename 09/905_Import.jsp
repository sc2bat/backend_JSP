<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>905_Import</title>
</head>
<body>
	<h1>JSTL Import</h1>
	<c:import url="http://localhost:8090/WEB07_JSP_SERVLET/09/901_EL.jsp" var="data">	</c:import>
	${data }
	
	<hr>
	<h2>905_Import</h2>
	<hr>
	<c:url value="../image/Koala.jpg" var="image"></c:url>
	<h3>${image }</h3>
	<img alt="" src="${image }" width="200" height="200">
</body>
</html>