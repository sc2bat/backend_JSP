<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	String sql = "DELETE FROM mem WHERE id=?";
	String id = request.getParameter("id");
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	response.sendRedirect("08_MemberMgr.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_deleteM</title>
</head>
<body>

</body>
</html>