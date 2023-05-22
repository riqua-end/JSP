<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

당신이 선택한 항목입니다.
<hr>
<%--form에서 복수개로 넘어온 파라메터(checkbox)는 EL에서는 paramValues내장 객체 사용 --%>
<%--paramValues.form의 name속성 값 --%>
<c:forEach var="item" items="${paramValues.item }" varStatus="status">
	${item }
	<c:if test="${not status.last }">,</c:if>
</c:forEach>
</body>
</html>