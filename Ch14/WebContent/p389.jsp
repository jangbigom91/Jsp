<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	
	int updateCount = 0;
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	
	try {
		String host = "jdbc:mysql://192.168.50.82:3306/cjh";
		String user = "cjh";
		String pass = "1234";
		
		String sql = "UPDATE `MEMBER` SET name = '"+name+"' "+
					 "WHERE uid = '"+uid+"'";
		
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(host, user, pass);
		
		// 3. Statement 생성
		stmt = conn.createStatement();
		updateCount = stmt.executeUpdate(sql);
	} finally {
		if(stmt != null) try {stmt.close();} catch(SQLException ex) {}
		if(conn != null) try {conn.close();} catch(SQLException ex) {} 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 변경</title>
</head>
<body>
	<% if(updateCount > 0) { %>
	<%= uid %>의 이름을 <%= name %>으로 변경
	<% } else { %>
	<%= uid %> 아이디가 존재하지 않음
	<% } %>
	
</body>
</html>