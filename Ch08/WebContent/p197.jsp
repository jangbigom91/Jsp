<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />
<%
	member.setId("jsp");
	member.setName("최정한");
%>
<jsp:forword page="/p198.jsp" />