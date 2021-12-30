<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String phone = request.getParameter("phone");
	
	String sql = "UPDATE mem SET name=?, pwd=?, phone=? WHERE id=?";
		
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, pwd);
		pstmt.setString(3, phone);
		pstmt.setString(4, userid);
		pstmt.executeUpdate();
	} catch(Exception e){
		e.printStackTrace();	
	}finally{
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	response.sendRedirect("MemberMGR.jsp");
%>
