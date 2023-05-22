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

<%--test속성값은 조건식(비교연산,논리연산) --%>
<%--param.문자열은 숫자로 자동 형변환 --%>
<c:if test="${param.color == 1}">
	<span style="color:red;">빨강</span>
</c:if>	
<c:if test="${param.color == 2 }">
	<span style="color:green;">초록</span>
</c:if>
<c:if test="${param.color == 3 }">
	<span style="color:blue;">파랑</span>
</c:if>

</body>
</html>