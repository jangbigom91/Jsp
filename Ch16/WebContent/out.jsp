<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cu" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
	<cu:out>
		<jsp:doBody><u>현재시간</u>은 <b>${dateEL}</b> 입니다.</jsp:doBody>
	</cu:out>

	<br>
	
	<cu:out>
		<%= new Date() %><u>현재시간</u>은 <b>${dateEL}</b> 입니다.
	</cu:out>

</body>
</html>