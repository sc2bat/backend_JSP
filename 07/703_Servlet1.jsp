<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>703_Servlet1</title>
</head>
<body>
	<form method="post" action="../Servlet07">
		<label for="userid">아이디 : </label> <input type="text" name="id" id="userid"> <br> <br>
		<label for="userpwd">암호 : </label> <input type="password" name="pwd" id="userpwd"> <br> <br>
		<label for="gender">성별 : </label>
		<input type="radio" name="gender" value="1">남
		<input type="radio" name="gender" value="2">여 <br> <br>
		<label for="email">메일</label>
		<input type="radio" name="email" id="email" value="1">수신
		<input type="radio" name="email" id="email" value="2">거부 <br> <br>
		<label for="content">가입인사</label> <br>
		<textarea name="content" rows="3" cols="35"></textarea> <br> <br>
		<label for="item"></label> <br> <br>
		<input type="checkbox" name="item" value="1">1
		<input type="checkbox" name="item" value="2">2
		<input type="checkbox" name="item" value="3">3<br>
		<input type="checkbox" name="item" value="4">4
		<input type="checkbox" name="item" value="5">5
		<input type="checkbox" name="item" value="6">6 <br> <br>
		<span style="float:left; margin-right:20px;">
			<label for="job">job</label>
			<select id="job" name="job" size="1">
				<option value="">선택</option>
				<option value="1">1선택</option>
				<option value="2">2선택</option>
				<option value="3">3선택</option>
				<option value="4">4선택</option>
				<option value="5">5선택</option>
				<option value="6">6선택</option>
			</select>
		</span>
		<label for="interest" style="float:left;">interest</label>
		<select id="interest" name="interest" size="5" multiple="multiple">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="submit" value="send">
	</form>
</body>
</html>