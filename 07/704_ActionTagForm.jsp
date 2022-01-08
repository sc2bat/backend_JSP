<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>704_ActionTagForm</title>
</head>
<body>
	<form action="705_ActionTag_do.jsp">
		id : <input type="text" name="userid"> <br>
		password : <input type="password" name="userpwd"> <br>
		<input type="radio" name="loginCheck" value="user" checked="checked">사용자
		<input type="radio" name="loginCheck" value="admin">관리자
		<br>
		<input type="submit" value="login">
		
	</form>
</body>
</html>