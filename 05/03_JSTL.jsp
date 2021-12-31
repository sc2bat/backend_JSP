<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- prefix = "c" : JSTL 문법을 사용하기 위해서 태그의 첫글자를 c를 사용하겠습니다 라는 표시입니다 
그리고 c : 으로 시작하는 "태그"는 jstl 문법이 적용됩니다.-->
<%-- <c:태그이름></c:태그이름> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_JSTL</title>
</head>
<body>
<!-- https://tomcat.apache.org/taglibs/standard/ -->
<!-- http://archive.apache.org/dist/jakarta/taglibs/standard/ -->
<!-- http://archive.apache.org/dist/jakarta/taglibs/standard/binaries/ -->
<!-- jakarta-taglibs-standard-1.1.2.zip 파일 다운 -->
<!-- WEB-INF\lib\ 내에 jstl.jar, standard.jar 파일 두개 복붙 -->
<!--  Web App Libraries 내에 파일 위치 여부로 확인 -->
	
<!-- EL 에 없는 JSP 기능의 대부분이 JSTL 에서 제공합니다. 변수, 반복문, if 등등 -->
단순 출력 <br>
JSTL 출력 : <c:out value="Hello" /> <br>
EL 출력 : ${"Hello" }<%-- ${msg } = Hello --%>
<br><br><br>

변수 생성 및 초기화1 <br>
<c:set var="msg" value="Hello" /> <br>
<c:set var="msg" value="Hello"></c:set> <br>
생성한 변수를 EL 에 의해 출력 <br>
\${msg } = ${msg }
<br><br><br>

변수 생성 및 초기화2 <br>
<c:set var="age">30</c:set> <br>
생성한 변수를 EL 에 의해 출력 <br>
\${age } = ${age }<%-- ${age } = 30 --%>
<br><br><br>

객체 생성 <br>
<c:set var="member" value="<%=new com.ezen.dto.MemberBean() %>"></c:set>
<!-- MemberBean member = new MemberBean(); -->
<!-- 멤버변수 값 변경 -->
<c:set target="${member }" property="name" value="홍길동"></c:set>
<c:set target="${member }" property="userid" >Hong</c:set>
EL 에 의한 멤버변수 출력 - 객체와 멤버변수 이름만으로 setter 기능이 대체됩니다. <br>
\${member.name } = ${member.name }<br><%-- ${member.name } = 홍길동 --%>
\${member.userid } = ${member.userid } <br><%-- ${member.userid } = Hong --%>
클래스에 각 멤버변수에 대한 getter 와 setter 가 존재해야 위의 실행이 가능합니다 <hr> <br>

<br><br><br>
그외 변수와 출력 기능 - jstl 과 el의 혼합 사용 <br>
<c:set var="add" value="${10 + 5}"></c:set>
\${add } = ${add } <br><%-- ${add } = 15 --%>
<c:set var="flag" value="${10 > 5}"></c:set>
\${flag } = ${flag } <br><%-- ${flag } = true --%>

<input type="text" value="${member.userid }"><!-- 어디서나 사용이 가능함 --> <br>


</body>
</html>