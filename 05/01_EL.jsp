<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_EL</title>
<%-- <% --%>
<!-- 	String s = "hello"; -->
<%-- %> --%>
</head>
<body>
<!-- 표현 언어(EL, Expression Language : JSP 의 전달값이나 변수값 등 자료를 출력할 때의 번거로움을 간단히 해결하기 위해 만들어진 출력 문법,
jsp 의 문법을 html5 에서 좀더 구분하기 쉽고, 오류를 줄여서 운용하기 위해 개발된 언어. 
주로 pageContext, request, session, application에 전달되는 Attribute 의 값을 getter 를 이용하지 않고 출력할 때 많이 사용합니다.) -->

JSP 문법 사용1 : <%="HELLO" %> <br>
JSP 문법 사용2 : <%out.print("HELLO");%> <br>
EL 문법 사용 : ${"HELLO" } <br>
<%-- EL 문법 사용 : ${s} <br> --%>

<br><br>
정수형 : ${10 } <br>
실수형 : ${5.6 } <br>
문자열형 : ${"홍길동" } <br>
논리형 : ${true } <br>
null : ${null} <br>

<br><br>
<!-- 산술연산 -->
10과 2의 합 : ${10 +2 } <br>
<%-- \${10-2 } 는 모양 그대로 출력, ${10 -2 } 는 계산된 결과 출력 --%>
\${10 - 2 } : ${10 - 2} <br>
\${10 * 2 } : ${10 * 2} <br>
\${10 / 2 } : ${10 / 2} <br>
\${10 % 3 } : ${10 % 3} <br>
\${10 mod 3 } : ${10 mod 3} <br>

<br><br>
<!-- 관계연산(비교연산) -->
\${10 == 2 } = ${10 == 2 } <br> <%-- ${10 == 2 } = false --%>
\${10 eq 2 } = ${10 eq 2 } <br> <%-- ${10 eq 2 } = false --%>
\${10 < 2 } = ${10 < 2 } <br> <%-- ${10 < 2 } = false --%>
\${10 lt 2 } = ${10 lt 2 } <br> <%-- ${10 lt 2 } = false --%>
\${5 >= 4 } = ${5 >= 4 } <br> <%-- ${5 >= 4 } = true --%>
\${empty("")} = ${empty("")} <br> <%-- ${empty("")} = true --%>

<br><br>
<!-- 서로 다른 자료형간의 연산 -->
\${"2" + 5 } = ${"2" + 5 } <br><%-- ${"2" + 5 } = 7 --%>
\${"2" + "5" } = ${"2" + "5" } <br> <%-- ${"2" + "5" } = 7 --%>
\${"2" * 5 } = ${"2" * 5 } <br><%-- ${"2" * 5 } = 10 --%>
\${null + 1 } = ${null + 1 } <br><%-- ${null + 1 } = 1 --%>

<br><br>
<!-- 문자열 연결(이어붙이기) -->
<%-- \${"문자" + "열" } = ${"문자" + "열" } --%> <!-- 이 연산은 에러입니다 -->
<!-- 문자열 연결(EL 3.0 추가) -->
\${"문자" += "열" +="연결" } = ${"문자" += "열" +="연결" } <br>

<br><br>
<!-- 서버 객체의 내용을 getAttribute 메소드 없이 사용 -->
<%
	request.setAttribute("name", "홍길동");
	pageContext.setAttribute("name", "홍길서");
	session.setAttribute("name", "홍길남");
	application.setAttribute("name", "홍길북");
%>

JSP 문법 : <%=request.getAttribute("name") %> <br><!-- JSP 문법 : 홍길동 -->
JSP 문법 : <% String str = (String) request.getAttribute("name"); %>
<%=str %> <br><!-- JSP 문법 : 홍길동 -->

EL 문법 : ${name } <br>	<!-- EL 문법 : 홍길서 --><!-- pageContext 출력됨 -->
<!-- 키값이 중복되었을 경우 수명에 따라 값이 출력됨  -->
EL 문법 : ${requestScope.name } <br><!-- EL 문법 : 홍길동 -->
EL 문법 : ${sessionScope.name } <br><!-- EL 문법 : 홍길남 -->
EL 문법 : ${applicationScope.name } <br><!-- EL 문법 : 홍길북 -->




</body>
</html>