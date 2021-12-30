<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// addMember_do.jsp
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	
	String sql = "INSERT INTO mem(id, name, pwd, phone) VALUES(?, ?, ?, ?)";
	
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String phone = request.getParameter("phone");
	
	// try catch 구문을 JDBC 에서 사용한 것처럼 사용해서 
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, pass);
		pstmt = con.prepareStatement(sql);
// 		pstmt.setString(1, "name");
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, phone);
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
	response.sendRedirect("MemberMGR.jsp");
%>