<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>604_Table</title>
</head>
<body>
	<table cellspacing="1" bgcolor="black" width="500">
		<% for(int i = 1; i <= 5; i++){
			%> <tr bgcolor="white" height="80">
				<% for(int j = 1; j <= 5; j++){
					%> <td> <%=i  %>행 <%=j %>열 </td> 
					<%
				}
					%>  
			 </tr>
		<%
		}
		%>
	</table>
</body>
</html>