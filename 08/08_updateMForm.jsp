<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateMForm</title>
<%!
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	String sql = "SELECT * FROM mem WHERE id=?";
%>
</head>
<body>
<%
	String id = request.getParameter("id");
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
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
			if(rs != null)rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

%>
<h2>회원정보 수정 폼</h2>
<form action="08_updateM_do.jsp">
	<table border="1">
		<tr>
			<td>id</td>
			<td><%=id %><input type="hidden" name="id" value="<%=id %>"></td>
		</tr>
		<tr>
			<td>name</td>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
			<td>pwd</td>
			<td><input type="password" name="pwd" value=""></td>
		</tr>
		<tr>
			<td>phone</td>
			<td><input type="text" name="phone" value="<%=phone %>"></td>
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