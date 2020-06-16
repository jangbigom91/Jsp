<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String json = "{\"uid\":\"a101\", \"name\":\"김유신\", \"hp\":\"010-1234-1111\", \"pos\":\"사원\"}"; // \ -> Escape 처리

	out.print(json);
%>