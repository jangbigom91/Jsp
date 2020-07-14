<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>include 디렉티브</title></head>
<body>
<%
	int number = 10;
%>

p169.jsp에서 지정한 번호 : <%= number %>
<p>
<%
	String dataFolder = "c:\\data";
%>

공통변수 DATAFOLDER = "<%= dataFolder %>"
</body>
</html>