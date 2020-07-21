<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${empty sessionScope.member}"> <!-- 멤버가 아니면 시작페이지가 login.do, 멤버이면 list.do -->
		<jsp:forward page="/user/login.do"></jsp:forward>	
	</c:when>
	<c:otherwise>
		<jsp:forward page="/list.do"></jsp:forward>
	</c:otherwise>
</c:choose>

