<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>912_ParameterCal_do.jsp</title>
</head>
<body>
<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	int n1 = Integer.parseInt(str1);
	int n2 = Integer.parseInt(request.getParameter("num2"));
%>
<%=n1 %> + <%=n2 %> = <%=n1+n2 %> <br>
<%=str1 %> + <%=str2 %> = <%=str1+str2 %> <br>

<hr>
EL <br>
${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }
${param.num1 } + ${param.num2 } = ${param.num1 += param.num2 }

</body>
</html>