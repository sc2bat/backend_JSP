<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sAge = request.getParameter("age");
	int age = Integer.parseInt(sAge);
	String abc = request.getParameter("abc");
	
	if(age <= 19){		
%>
<script type="text/javascript">
	alert("20세 미만 입장 불가");
	history.go(-1);
</script>

<%
	}else{
		request.setAttribute("name", "rose");
		RequestDispatcher dp = request.getRequestDispatcher("903_ForwardResult.jsp");
		dp.forward(request, response);
	}
%>