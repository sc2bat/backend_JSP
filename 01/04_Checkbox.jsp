<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_Checkbox</title>
</head>
<body>
	<h2>악세사리</h2>
	관심항목을 선택하세요
	<hr>
	<form action="04_Checkbox_to.jsp">
		<input type="checkbox" name="item" value="shoes">신발
		<input type="checkbox" name="item" value="bag">가방
		<input type="checkbox" name="item" value="belt">벨트
		<br>
		<input type="checkbox" name="item" value="cap">모자
		<input type="checkbox" name="item" value="watch">시계
		<input type="checkbox" name="item" value="diamond">쥬얼리
		<br>
		<input type="submit" value="전송">
	</form>
<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/01/04_Checkbox_to.jsp?item=shoes&item=bag&item=belt&item=cap&item=watch -->
<!-- 	전달되는것은 텍스트가 아니라 input 의 value 가 전달됨	 -->

<!-- 직접 주소창에 입력하면 string 값 그대로 나옴 -->
<!-- 	http://localhost:8090/WEB07_JSP_SERVLET/01/04_Checkbox_to.jsp?item=신발&item=가방&item=시계 -->
</body>
</html>