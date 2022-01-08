<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>603_Action</title>
</head>
<body>
	<form action="603_Action_to.jsp" name="joinForm" method="get">
		<label for="name">이름</label><span style="color:red;">*</span>
		<input type="text" id="name" name="name" value="">
		<label for="id">아이디</label><span style="color:red;">*</span>
		<input type="text" id="id" name="id" value="">
		<label for="pwd">비밀번호</label><span style="color:red;">*</span>
		<input type="password" id="pwd" name="pwd" value="">
		<label for="pwd_re">비밀번호 확인</label><span style="color:red;">*</span>
		<input type="password" id="pwd_re" name="pwd_re" value="">
		<input type="submit" value="회원가입">
		<input type="reset" value="다시작성">
	</form>
	
	<br><br>
	
	<a href="603_Action_to.jsp?useritem=test">유저아이템보내기</a>
	
	<br><br>
	<hr>
	<br>
	
	<h2>악세사리</h2>
	<form action="603_Action_to.jsp">
		<input type="checkbox" name="item" value="shoes">신발
		<input type="checkbox" name="item" value="bag">가방
		<input type="checkbox" name="item" value="belt">벨트 <br>
		<input type="checkbox" name="item" value="cap">모자
		<input type="checkbox" name="item" value="watch">시계
		<input type="checkbox" name="item" value="diamond">쥬얼리 <br>
		<input type="submit" value="전송">		
	</form>
	
	<br><br>
	<hr>
	<br>
	
	<form action="603_Action_to.jsp" method="get">
		<label for="job">직업</label>
		<select id="job" name="job" size="1">
			<option value="가">가</option>			
			<option value="나">나</option>			
			<option value="다">다</option>			
			<option value="라">라</option>			
			<option value="마">마</option>			
			<option value="바">바</option>			
		</select>
		<br><br>
		<hr>
		<label for="interest" style="float:left">테스트</label>
		<select id="interest" name="interest" size="5" multiple="multiple">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<br> <input type="submit" value="전송">
	</form>
	
</body>
</html>