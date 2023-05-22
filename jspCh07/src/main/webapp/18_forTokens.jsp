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

<!-- delims속성에는 복수개 지정 가능 delims=",." -->
<%--forTokens는 문자열을 구분자로 분리하여 배열 형태로 전환하여 각 요소별로 반복 처리 --%>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
	${city }<br>
</c:forTokens>
<hr>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
	${city }<br>
</c:forTokens>
</body>
</html>