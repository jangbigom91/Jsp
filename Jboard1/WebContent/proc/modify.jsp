<%@page import="kr.co.jboard1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.co.jboard1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");

	String title 	= request.getParameter("title");
	String content 	= request.getParameter("content");
	String seq 		= request.getParameter("seq");

	// 1,2단계
	Connection conn = DBConfig.getConnection();
	
	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_ARTICLE);
	
	psmt.setString(1, title);
	psmt.setString(2, content);
	psmt.setString(3, seq);
	
	// 4단계
	psmt.executeUpdate();
	
	// 5단계
	
	// 6단계
	psmt.close();
	conn.close();

	// 리다이렉트
	response.sendRedirect("/Jboard1/view.jsp?seq="+seq);
%>