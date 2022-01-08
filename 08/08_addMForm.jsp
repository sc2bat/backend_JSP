<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMForm</title>
</head>
<body>
	<form method="get" action="08_addM_do.jsp">
		<table>
			<tr>
				<td>이름</td>			
				<td><input type="text" name="name" size="20"></td>			
			</tr>
			<tr>
				<td>아이디</td>			
				<td><input type="text" name="id" size="20"></td>			
			</tr>
			<tr>
				<td>비밀번호</td>			
				<td><input type="password" name="pwd" size="20"></td>			
			</tr>
			<tr>
				<td>전화번호</td>			
				<td><input type="text" name="phone" size="20"></td>			
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>			
				<td><input type="reset" value="리셋"></td>			
			</tr>
		</table>
	</form>
</body>
</html>