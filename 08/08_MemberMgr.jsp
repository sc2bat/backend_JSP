<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_MemberMgr</title>
<%!
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String driver ="oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	
	String sql = "SELECT * FROM mem";
	%>
</head>
<body>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>암호</th>
			<th>전화번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<%
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, pass);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("id") + "</td>");
				out.println("<td>" + rs.getString("pwd") + "</td>");
				out.println("<td>" + rs.getString("phone") + "</td>");
				out.println("<td><a href='08_updateMForm.jsp?id=" + rs.getString("id") + "'>수정</td>");
				out.println("<td><a href='08_deleteM.jsp?id=" + rs.getString("id") + "'>삭제</td>");
				out.println("</tr>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		try{
			if(con != null){con.close();
			}if(pstmt != null){pstmt.close();
			}if(rs != null){rs.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		%>
	</table>
	<a href="08_addMForm.jsp">추가</a>
</body>
</html>