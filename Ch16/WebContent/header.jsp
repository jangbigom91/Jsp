<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cu" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목 출력</title>
</head>
<body>

<cu:header title="텍스트 제목" level="2" />

<cu:header title="${'표현언어 제목'}" level="3" />

<cu:header title='<%= "표현식 제목" %>' />

</body>
</html>