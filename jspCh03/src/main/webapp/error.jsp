<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--현재 페이지가 에러 페이지임을 설정 --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

다음과 같은 에러가 발생하였습니다.
<%=exception.getMessage() %>
<%--exception도 jsp가 제공하는 내장 객체로 예외 처리 객체 --%>
</body>
</html>