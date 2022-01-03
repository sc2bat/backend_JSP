<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_forEach02</title>
</head>
<body>
	<%
		String []movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
		pageContext.setAttribute("movieList", movieList);
	%>
	<table border="1" style="width:700px; text-align:center;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>title</th>
		</tr>
		<c:forEach items="${movieList }" var="movie" varStatus="state">
			<tr>
				<td>${state.index }</td> 
				<td>${state.count}</td> 
				<td>${movie }</td> 
			</tr>
		</c:forEach>
	</table>
		<!-- 	index		count		title -->
		<!-- 	0			1			타이타닉 -->
		<!-- 	1			2			시네마 천국 -->
		<!-- 	2			3			혹성 탈출 -->
		<!--	3			4			킹콩 -->
<!-- varStatus : 반복실행의 상태값을 갖고 있는 객체클래스
status : 현재 반복순서의 상태
${status.count } : 1부터 시작한 반복의 현재 아이템
${status.index } : 0부터 시작한 반복의 현재 아이템 -->
<%-- 		<c:forEach items="${movieList }" var="movie" varStatus="status"> --%>
<!-- 			<tr> -->
<%-- 				<td>${status.index }</td>  --%>
<%-- 				<td>${status.count}</td>  --%>
<%-- 				<td>${movie }</td>  --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>

<!-- 위의 pageContext 에 저장된 movieList 를 이용하여 반복실행문을 제작하되, 영화제목으로 구성된 리스트를 만들어주세요 
choose when otherwise 를 이용하여 첫번째 목록은 글자색 빨간색으로 표시하고 나머지는 검은색으로 표시해주세요  -->
<%-- 사용할 조건문 : test="${status.first }" --%>


<%-- <c:forEach items="${movieList }" var="movie" varStatus="status">
 	${movie };
	<c:choose>
		<c:when test="${status.count == 1 }">
			<span style="color:red;">${status.movie}</span>
		</c:when>
		<c:when test="${status.count == 1 }">
			<span style="color:red;">${status.movie}</span>
		</c:when>
		<c:otherwise>
			<span>${status.movie}</span>
		</c:otherwise>
	</c:choose> 
</c:forEach>--%>

<!-- 위의 pageContext 에 저장된 movieList 를 이용하여 반복실행문을 제작하되, 영화제목으로 구성된 리스트를 만들어주세요 
choose when otherwise 를 이용하여 첫번째 목록은 글자색 빨간색으로 표시하고 나머지는 검은색으로 표시해주세요  -->
<%-- 사용할 조건문 : test="${status.first }" --%>
<ul>
	<c:forEach items="${movieList }" var="movie" varStatus="status">
		<c:choose>
			<c:when test="${status.first }"><!-- 목록에서 첫번째만 빨간색으로 작성 -->
				<li style="font-weight:bold; color:red;">${movie }</li>
			</c:when>
			<c:when test="${status.last }"><!-- 목록에서 마지막 파랑색으로 작성 -->
				<li style="font-weight:bold; color:blue;">${movie }</li>
			</c:when>
			<c:otherwise>
				<li>${movie }</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
<%-- ${status.first } : 현재 루프가 처음이면 true 리턴 --%>
<%-- ${status.last} : 현재 루프가 마지막이면 false 리턴 --%>

<!-- 마지막 아이템만 빼고 각 아이템 사이에 (,)컴마를 찍어 출력하고 싶을 때 -->
<c:forEach items="${movieList }" var="movie" varStatus="status">
<%-- 	${movie }, --%>
<%-- 	${movie }	<c:if test="${not status.last }">,</c:if> --%>
	${status.current} <c:if test="${not status.last }">,</c:if>
</c:forEach>

<%-- ${status.current} : 현재 아이템
${status.begin} : 시작값 
${status.end} : 끝값 
${status.step} : 증가값   --%>

<br>
<br>

<h3>반복 실행문의 또 다른 사용 예</h3>
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
	${cnt } <c:if test="${not status.last }">,</c:if>
</c:forEach>


<br><br>
<br><br>
<hr>
<table border="1" style="width:50%; text-align: center;" align="left">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	<c:forEach var="cnt" begin="7" end="10" varStatus="status">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${cnt }</td>
		</tr>
	</c:forEach>
</table>
<!-- index	count	cnt 
		7		1		7
		8		2		8
		9		3		9
		10		4		10	-->


</body>
</html>