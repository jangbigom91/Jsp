<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.Reader"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%
	//1. JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	try {
		String host = "jdbc:mysql://192.168.50.82:3306/cjh";
		String user = "cjh";
		String pass = "1234";
		
		String sql = "SELECT * FROM `MEMBER_HISTORY`"+
					 "WHERE uid ='"+uid+"'";
		
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(host, user, pass);
		
		// 3. Statement 생성
		stmt = conn.createStatement();
		
		// 4. 쿼리 실행
		rs = stmt.executeQuery(sql);
		
		// 5. 쿼리 실행 결과 출력
		 if(rs.next()) {

%>
	<table border="1">
		<tr>
			<td>아이디</td><td><%= uid %></td>
		</tr>

		<tr>
			<td>히스토리</td>
			<td>
<%
	String history = null;
	Reader reader = null;

	try {
		reader = rs.getCharacterStream("history");
		
		if(reader != null) {
			StringBuilder buff = new StringBuilder();
			char[] ch = new char[512];
			int len = -1;
			
			while((len = reader.read(ch)) != -1) {
				buff.append(ch, 0, len);
			}
			
			history = buff.toString();
		}
	} catch(IOException ex) {
		out.println("익셉션 발생 : "+ex.getMessage());
	} finally {
		if(reader != null) try {reader.close();} catch(IOException ex) {}
	}
%>
<%= history %>
	</td>
</tr>
</table>
<%
		 } else {
%>
<%= uid %> 회원의 히스토리가 없습니다.
<%
		 }
	} catch(SQLException ex) {
%>
에러 발생 : <%= ex.getMessage() %>
<%
	} finally {
		// 6. 사용한 Statement 종료
		if (rs != null) try {rs.close();} catch(SQLException ex) {}
		if(stmt != null) try {stmt.close();} catch(SQLException ex) {}
		
		// 7. 커넥션 종료
		if(conn != null) try {conn.close();} catch(SQLException ex) {}
	}
%>
</body>
</html>