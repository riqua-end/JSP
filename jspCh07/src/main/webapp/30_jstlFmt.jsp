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

<%--post방식으로 전달된 한글 깨짐 방지,값 사용 이전에 작성 --%>
<fmt:requestEncoding value="UTF-8"/>
이름 : <c:out value="${param.name }"></c:out>
</body>
</html>