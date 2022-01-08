<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>911_ParameterForm</title>
</head>
<body>
	<form method="post" action="911_ParameterTo.jsp">
		<label for="userid">id : </label>
		<input type="text" name="id" id="userid"> <br>
		<label for="userpwd">pwd : </label>
		<input type="password" name="pwd" id="userpwd"> <br>
		<input type="submit" value="login">
	</form>
</body>
</html>