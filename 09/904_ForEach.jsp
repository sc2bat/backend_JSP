<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>904_ForEach</title>
</head>
<body>
<%
	String []abc = {"A", "B", "C", "D", "E"};
	request.setAttribute("abc", abc);
	
	String []abc1 = (String [])request.getAttribute("abc");
	for(String s : abc1){
		out.print(s + "&nbsp;");
	}
%>
<br> <br>
<%-- <c:forEach items="${abc1}"> --%>
<%-- 	<c:out value="${ab }&nbsp;</c:forEach> --%>

<br> <br>
<c:forEach items="${abc }" var="abc">${abc }&nbsp;</c:forEach>

<br> <hr> <br>

<%
	String []sList = {"11", "22", "33", "44", "55"};
	pageContext.setAttribute("sList", sList);
%>
<table border="1" style="width:700px; text-align:center;">
	<tr>
		<td>index</td>
		<td>count</td>
		<td>title</td>
	</tr>
	<c:forEach items="${sList }" var="s" varStatus="status">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${s }</td>
		</tr>
	</c:forEach>
</table>

<!-- 위의 pageContext 에 저장된 movieList 를 이용하여 반복실행문을 제작하되, 영화제목으로 구성된 리스트를 만들어주세요 
choose when otherwise 를 이용하여 첫번째 목록은 글자색 빨간색으로 표시하고 나머지는 검은색으로 표시해주세요  -->
<%request.setAttribute("sList", sList); %>
<ul>
	<c:forEach items="${sList }" var="s" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight:bold; color:red;">${s }</li>
			</c:when>
			<c:when test="${status.last }">
				<li style="font-weight:bold; color:blue;">${s }</li>
			</c:when>
			<c:otherwise>
				<li>${s }</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
<hr>
<c:forEach items="${sList }" var="s" varStatus="status">
	${s },
</c:forEach>
<br> <br>
<c:forEach items="${sList }" var="s2" varStatus="status">
	${status.current }<c:if test="${not status.last }">,</c:if>
</c:forEach>
<br> <br>

<%-- <c:forEach items="${sList }" var="s3" varStatus="q"> --%>
<%-- 	\${q.current } = ${q.current }  --%>
<%-- 	\${q.begin } = ${q.begin}  --%>
<%-- 	\${q.end } = ${q.end }  --%>
<%-- 	\${q.step } = ${q.step }  --%>
<%-- </c:forEach> --%>
<c:forEach items="${sList }" var="s3" varStatus="q">
	${q.current }
	<c:if test="${q.begin }">begin</c:if>
	<c:if test="${q.end }">end</c:if>
	<c:if test="${q.step }">step</c:if>
</c:forEach>

<br> <br>
<c:forEach var="cnt" varStatus="w" begin="1" end="10">
	${cnt }
	${w.begin}
	${w.end}
	${w.step }
	<br>
</c:forEach>
<br><br>
</body>
</html>