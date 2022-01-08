<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>701_Operator</title>
	<%!
		String str = "안녕하세요!";
		int a = 5, b= -5;
		public int abs( int n ){
			if(n<0){
				n= n*-1;
			}
			return n;
		}
		
		int global_cnt = 0;
		
	%>
</head>
<body>
	<%
		int num1 = 20;
		int num2 = 7;
		double num3;
		int add = num1 + num2;
		out.print(num1 + "+" + num2 + "=" + add + "<br>");
		add = num1 - num2;
		out.print(add + "<br>");
		add = num1 * num2;
		out.print(add + "<br>");
		num3 = num1 / (double)num2;
		out.print(num3 + "<br>");
	%>
	<hr>
	<br><br>
	<%
		int c = 10;
		c++;
		a++;
		out.print(str + "<br>");
		out.print(a+ "<br>" + abs(a) + "<br>");
		out.print(c+ "<br>" + abs(c) + "<br>");
	%>
	<%=str %> <br>
	<%=abs(a)%><br>
	<%=abs(c)	 %><br>
	<hr>
	<br><br>
	<%
		int local_cnt = 0;
	%>
	<h1>local_cnt : <%=++local_cnt %></h1>
	<h1>global_cnt : <%=++global_cnt %></h1>
</body>
</html>