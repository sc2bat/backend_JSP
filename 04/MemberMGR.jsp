<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%-- <%@ page import="java.sql.DriverManager" %> --%>
<%-- <%@ page import="java.sql.ResultSet" %> --%>
<%-- <%@ page import="java.sql.PreparedStatement" %> --%>
<%-- <%@ page import="java.sql.Connection" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberMGR</title>
<%!
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	
	String sql = "SELECT * FROM mem";
%>
</head>
<body>
<!-- ojdbc6.jar 파일 WEB07_JSP_SERVLET 내 WEB-INF 폴더 내에 넣기 -->
	<table width="800" border="1">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>암호</th>
			<th>전화번호</th>
			<th>삭제</th>
		</tr>
		<%
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, pass);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){ // while 문 1회 반복실행을 테이블의 1행 출력과 같도록 구성합니다
				out.println("<tr>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("id") + "</td>");
				out.println("<td>" + rs.getString("pwd") + "</td>");
				out.println("<td>" + rs.getString("phone") + "</td>");
				out.println("<td><a href='updateMemberForm.jsp?userid=" + rs.getString("id") + "'>수정</a></td>");
				out.println("<td><a href='deleteMember.jsp?userid=" + rs.getString("id") + "'>삭제</a></td>");
				out.println("</tr>");
			}
		} catch(Exception e){
			e.printStackTrace();	
		}
		try{
			if(con != null)con.close();
			if(pstmt != null)pstmt.close();
			if(rs != null)rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}
			
		%>
	</table>
	<a href="addMemberForm.jsp">멤버 추가</a>
	<%
// 	try{
// 		Class.forName(driver);
// 		con = DriverManager.getConnection(url, uid, pass);
// 		pstmt = con.prepareStatement(sql);
// 		pstmt.setString(1, "name");
// 		pstmt.setString(2, "userid");
// 		pstmt.setString(3, "pwd");
// 		pstmt.setString(4, "phone");
// 	}catch(Exception e){
// 		e.printStackTrace();	
// 	}
// 	try{
// 		if(con != null)con.close();
// 		if(pstmt != null)pstmt.close();
// 		if(rs != null)rs.close();
// 	}catch(Exception e){
// 		e.printStackTrace();
// 	}
	%>
</body>
</html>