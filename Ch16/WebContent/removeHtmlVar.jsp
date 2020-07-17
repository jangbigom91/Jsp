<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cu" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeHtmlVar</title>
</head>
<body>
	<c:set var="dateEL" value="<%= new Date() %>" />
	<cu:removeHtmlVar trim="true" var="removed">
		<font size="10">현재 <style>시간</style>은 ${dateEL} 입니다.</font>
	</cu:removeHtmlVar>

처리 결과 : ${removed}

</body>
</html>