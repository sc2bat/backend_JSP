<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!-- addM_do.jsp -->

<%
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upwd = "tiger";
	
	String sql = "INSERT INTO mem VALUES(?, ?, ?, ?)";
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String phone = request.getParameter("phone");
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, upwd);
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, phone);
		pstmt.executeUpdate();
	}catch(Exception e){e.printStackTrace();		
	}finally{
		try{
			if(con != null){con.close();
			}
			if(pstmt != null){pstmt.close();
			}
		}catch(Exception e){e.printStackTrace();
		}
	}
	response.sendRedirect("08_MemberMgr.jsp");
%>
