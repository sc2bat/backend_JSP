<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_Operator</title>
</head>
<body>
	<!-- 	연산자 -->
	<%
	int num1 = 20;
	int num2 = 7;
	double num3;
	int add = num1 + num2;
	out.print(num1 + "+" + num2 + " = " + add + "<br>");
	add = num1 - num2;
	out.print(num1 + "-" + num2 + " = " + add + "<br>");
	add = num1 * num2;
	out.print(num1 + "*" + num2 + " = " + add + "<br>");
	num3 = num1 / (double)num2;
	out.print(num1 + "/" + num2 + " = " + num3 + "<br>");
	%>
<!-- 20+7 = 27 -->
<!-- 20-7 = 13 -->
<!-- 20*7 = 140 -->
<!-- 20/7 = 2.857142857142857 -->

<%-- <%=num1 + "/" + num2 + "=" + num3 + "<br>" %> --%>
<!-- out.print() : System.out.print() 와 비슷해보이지만 이 메소드는 웹페이지에 출력하는 메소드입니다 -->

</body>
</html>