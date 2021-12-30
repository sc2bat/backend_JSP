<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8"); // 리퀘스트의 한글 인코딩 설정
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	
	String id = request.getParameter("userid");
	
	String sql = "DELETE FROM mem WHERE id=?";
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, pass);
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
	} catch (SQLException e) {e.printStackTrace();
	} finally {
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	response.sendRedirect("MemberMGR.jsp");
%>