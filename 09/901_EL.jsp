<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>901_EL</title>
<%String s = "Hello";%>
</head>
<body>
jsp1 : <%="hello" %> <br>
jsp2 : <%out.print("hello");%><br>
EL : ${"el hello" } <br>
<%-- EL : ${s } <br> --%>

<br> <br>

정수형 : ${10 } <br>
실수형 : ${5.3 } <br>
문자열형 : ${"가나다" } <br>
논리형 : ${true } <br>
null : ${null } <br>
<br> <br>

<!-- 산술연산 -->
10과 2의 합 : ${10 +2 } <br>
\${10 -2 } : ${10 -2 }<br>
\${10 *2 } : ${10 *2 }<br>
\${10 /2 } : ${10 /2 }<br>
\${10 %3 } : ${10 %3 }<br>
\${10 mod 3 } : ${10 mod 3 }<br>
\${10 mod 2 } : ${10 mod 2 }<br>
\${10 mod 4 } : ${10 mod 4 }<br>
\${10 mod 5 } : ${10 mod 5 }<br>
\${(10 mod 3) eq (10/3) } :  ${(10 mod 3) eq (10/3) }  <br>
\${(10 mod 3) eq (10%3) } :  ${(10 mod 3) eq (10%3) }  <br>
 <br>
\${"2" + 5 } = ${"2" + 5 } <br>
\${"2" + "5" } = ${"2" + "5" } <br>
\${"2" * 5 } = ${"2" * 5 } <br>
\${null +1 } = ${null+1 }<br>
 <br>
 <br>
<%-- \${"문자"+"열" } = ${"문자"+"열" } <br> --%>
<!-- org.apache.jasper.JasperException: 행 [43]에서 [/09/901_EL.jsp]을(를) 처리하는 중 예외 발생 -->
 \${"문자" +="열" += "연결" } = ${"문자" +="열" += "연결" }<br>
 <br>
 <br>
<%
	request.setAttribute("name", "request");
	pageContext.setAttribute("name", "pageContext");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
%> <br>
 <br>
jsp : <%=request.getAttribute("name") %> <br>
jsp : <%String str = (String)request.getAttribute("name"); %> <%=str %><br>
 <br>
EL <br>
\${name } : ${name } <br>
\${requestScope.name} : ${requestScope.name } <br>
\${sessionScope.name } : ${sessionScope.name } <br>
\${applicationScope.name } : ${applicationScope.name } <br>

</body>
</html>