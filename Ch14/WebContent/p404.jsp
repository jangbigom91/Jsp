<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String pos = request.getParameter("pos");
	String dep = request.getParameter("dep");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement psmt = null;
	
	try {
		String host = "jdbc:mysql://192.168.50.82:3306/cjh";
		String user = "cjh";
		String pass = "1234";
		
		conn = DriverManager.getConnection(host, user, pass);
	
		psmt = conn.prepareStatement("INSERT INTO `MEMBER` VALUES(?,?,?,?,?, NOW())");
		psmt.setString(1, uid);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setString(4, pos);
		psmt.setString(5, dep);
	
		psmt.executeUpdate();
	} finally {
		if(psmt != null) try {psmt.close();} catch(SQLException ex) {}
		if(conn != null) try {conn.close();} catch(SQLException ex) {} 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입</title>
</head>
<body>
MEMBER 테이블에 새로운 레코드를 삽입했습니다.
</body>
</html>