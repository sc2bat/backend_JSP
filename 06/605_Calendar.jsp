<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>605_Calendar</title>
</head>
<body>
	<%Calendar sDay = Calendar.getInstance(); %>
	<%Calendar eDay = Calendar.getInstance(); %>
	<%
		int sYear = sDay.get(Calendar.YEAR);
		int sMonth = sDay.get(Calendar.MONTH);
		if(request.getParameter("sYear")!=null){
			sYear = Integer.parseInt(request.getParameter("sYear"));
		}
		if(request.getParameter("sMonth") != null){
			sMonth = Integer.parseInt(request.getParameter("sMonth"));
			if(sMonth == 12){
				sMonth = 0;
				sYear++;
			}else if(sMonth == -1){
				sMonth = 11;
				sYear--;
			}
		}
		sDay.set(sYear, sMonth, 1);
		eDay.set(sYear, sMonth+1, 1);
		eDay.add(Calendar.DATE, -1);
		
		int START_WEEK = sDay.get(Calendar.DAY_OF_WEEK);
		int i, k, cnt = 0;
	%>
	<h1>
		<a href="605_Calendar.jsp?sYear=<%=sYear%>&sMonth=<%=sMonth-1%>">이전달</a>
		&nbsp;&nbsp;&nbsp;&nbsp;<%=sYear %> 년 <%=sMonth+1 %> 월 &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="605_Calendar.jsp?sYear=<%=sYear%>&sMonth=<%=sMonth+1%>">다음달</a>
	</h1>
	<table width="600" align="left" cellspacing="1" bgcolor="black" border="1">
		<tr bgcolor="white" height="50">
			<td align="center" width="80">일</td>		
			<td align="center" width="80">월</td>		
			<td align="center" width="80">화</td>		
			<td align="center" width="80">수</td>		
			<td align="center" width="80">목</td>		
			<td align="center" width="80">금</td>		
			<td align="center" width="80">토</td>		
		</tr>
		<tr bgcolor="white" height="60">
			<% for(i = 1; i < START_WEEK; i++){%>
				<td>&nbsp;</td>
			<%}%>
			<%for(i = 1; i <= 8-START_WEEK; i++){%>
				<td align="right"><%=i %>&nbsp;</td>
			<%}%>
		</tr>
		<tr bgcolor="white" height="60">
			<%for(k = i; k <= eDay.get(Calendar.DATE); k++){%>
				<td align="right"><%=k %>&nbsp;</td>				
				<%cnt++;%>
					<%if(cnt % 7 ==0){%>
					</tr> <tr bgcolor="white" height="60">
				<% }%>
			<% }%>
			<%for(i = 1; i <= 7-(cnt %7); i++){ %>
				<td>&nbsp;</td>
			<%} %>
		</tr>
	</table>
</body>
</html>