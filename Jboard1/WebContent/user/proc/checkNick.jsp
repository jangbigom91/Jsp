<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.jboard1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.jboard1.config.DBConfig"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String nick = request.getParameter("nick");

	Connection conn =    DBConfig.getConnection();
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_NICK);
	psmt.setString(1, nick);
	
	ResultSet rs = psmt.executeQuery();
	
	int result = 0;
	
	if(rs.next()) {
		result = rs.getInt(1);
	}
	
	rs.close();
	psmt.close();
	conn.close();
	
	// Json 생성
	JsonObject json = new JsonObject();
	json.addProperty("result", result);   // 아이디가 있으면 result:1, 없으면 result:0
	
	// Json 출력
	out.print(json);
%>