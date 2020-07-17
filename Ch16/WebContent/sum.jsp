<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cu" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sum 사용</title>
</head>
<body>
	
	<cu:sum begin="1" end="10">
		1-10까지 합 : ${sum}
	</cu:sum>

</body>
</html>