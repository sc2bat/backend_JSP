<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action</title>
</head>
<body>
<!-- 하나의 작업단위(회원가입, 로그인, 게시물 등록 등)를 구성하기 위해 사용되는 입력란, 선택란들은
작업단위별로 아래와 같이 form 태그안에 넣어서 사용합니다 form 의 첫번째 기능은 그의 경계선을 제공하는 것입니다. -->
	<form name="joinForm" action="03_Action_to.jsp" method="get">
	<!-- http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?name=123&id=123&pwd=123&pwd_re=123 -->
	<!-- <form name="joinForm" action="03_Action_to.jsp" method="post"> -->
	<!-- http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp -->
	<!-- name : 스크립트에서 다른것들과 구분하여 명명하기 위한 이름으로 사용
	action : 입력란 선택란에 입력하고 선택한 내용이 전달될 대상 파일
	method : 전달 방식을 의미하며, get 은 일반전송방식, post 는 비공개 전달 방식 사용 -->
		<label for="name">이름</label><span style="color:red;">*</span>
		<input type="text" id="name" name="name" value=""> <br>
		<label for="id">아이디</label><span style="color:red;">*</span>
		<input type="text" id="id" name="id" value=""> <br>
		<label for="pwd">비밀번호</label><span style="color:red;">*</span>
		<input type="password" id="pwd" name="pwd" value=""> <br>
		<label for="pwd_re">비밀번호 확인</label><span style="color:red;">*</span>
		<input type="password" id="pwd_re" name="pwd_re" value=""> <br>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시작성">
	</form>
<!-- form 태그 안에서 submit 버튼을 이용하는 것이 아니라 -->
<!-- 필요에 따라 일반 버튼 클릭을로 이동할 때, 이동주소에 전달값을 붙여서 이동시키기도 합니다 -->
<!-- 링크될 수조 - http://주소/경로/파일이름.jsp?전달name1=전달값1&전달name2=전달값2.... -->
	
	<br> <br>
	<a href="03_Action_to.jsp?useritem=superCar">유저아이템만 보내기</a>
<!-- 	웹브라우저 주소창에 name 과 value 로 구성된 주소를 직접 입력해도 링크를 클릭한것과 같이 전달됩니다 -->
<!-- 	 http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?useritem=주소에직접넣은 item -->
<!-- 주소를 브라우저 주소창에 넣고 엔터하면 그대로 전송됨 단순 String 에 불과하기에 -->
<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?useritem=test
	<a href="http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?useritem=test">테스트 이동</a>
</h3>
<!-- 	 http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?useritem=test -->
</body>
</html>