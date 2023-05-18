<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
session.invalidate(); //세션 완전 제거
%>

<script>
	alert("로그아웃 되었습니다.");
	location.href = "10_loginForm.jsp"; //페이지 이동
</script>
</body>
</html>