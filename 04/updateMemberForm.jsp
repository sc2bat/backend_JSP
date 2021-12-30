<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateMemberForm</title>
<%!
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	String sql = "SELECT * FROM mem WHERE id=?";
%>
</head>
<body>
<%
	String id = request.getParameter("userid");
	String name = null, phone = null;
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while(rs.next()){ 
			name = rs.getString("name");
			phone = rs.getString("phone");
		}
	} catch(Exception e){
		e.printStackTrace();	
	} finally{
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
			if(rs != null)rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>

	<h2>회원의 정보 수정 폼	</h2>
	<form method="post" action="updateMember_do.jsp">
		<table>
			<tr>
				<td>아이디</td>
				<td><%=id %><input type="hidden" name="id" value="<%=id %>"></td>
				<!-- id 변경 불가, 아이디 값이 이동은 해야하니 hidden -->
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" value=""></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" size="20" value="<%=phone %>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="정보수정">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>