<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>903_jstl</title>
</head>
<body>
	출력
	jstl : <c:out value="jstl Hello"></c:out> <br>
	EL : ${"EL Hello" }
	
	<c:set var="msg1" value="var1 Hello"></c:set>
	<c:set var="msg2" value="var2 Hello" />
	<br>
	\${msg1 } = ${msg1 } <br>
	\${msg2 } = ${msg2 } <br>
	<br>
	<c:set var="num">100</c:set>
	\${num } =${num }
	<hr>
	
	<br>
	<c:set var="member" value="<%=new com.ezen.dto.MemberBean() %>"></c:set>
	<c:set target="${member }" property="name" value="target qwer"></c:set>
	<c:set target="${member }" property="userid">target member</c:set>
	\${member.name } = ${member.name } <br>
	\${member.userid} = ${member.userid} <br>
	
	<c:set var="add" value="${10 +5 }"></c:set>
	\${add } = ${add } <br>
	<c:set var="flag1" value="${10 >5 }"></c:set>
	<c:set var="flag2" value="${10 <5 }"></c:set>
	\${flag1} = ${flag1} <br>
	\${flag2} = ${flag2} <br>
<%-- ${member.name } = target qwer --%>
<%-- ${member.userid} = target member --%>
<%-- ${add } = 15 --%>
<%-- ${flag1} = true --%>
<%-- ${flag2} = false --%>
	
	<input type="text" value="${member.userid }"	>
	
	<br> <hr>
	
	<c:if test="${param.color==1 }">
		<span style="color:red; font-size:180%; font-weight:blod;">빨강</span>
	</c:if>
	<c:if test="${param.color==2 }">
		<span style="color:black; font-size:180%; font-weight:blod;">검정</span>
	</c:if>
	<c:if test="${param.color==3 }">
		<span style="color:blue; font-size:180%; font-weight:blod;">파랑</span>
	</c:if>
<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/09/903_jstl.jsp?color=1 -->
	
	<c:choose>
		<c:when test="${param.fruit==1 }">
			<span style="color:red; font-size:200%; font-weight:bold;">apple</span>
		</c:when>
		<c:when test="${param.fruit==2 }">
			<span style="color:blue; font-size:200%; font-weight:bold;">blueberry</span>
		</c:when>
		<c:when test="${param.fruit==3 }">
			<span style="color:purple; font-size:200%; font-weight:bold;">grape</span>
		</c:when>
		<c:otherwise>
			<span style="color:yellow; font-size:200%; font-weight:bold;">banana</span>
		</c:otherwise>
	</c:choose>
<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/09/903_jstl.jsp?fruit=1 -->
	
</body>
</html>