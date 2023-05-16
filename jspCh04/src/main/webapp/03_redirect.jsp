<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>네이버 홈페이지로 이동</h3>

<%
	response.sendRedirect("http://www.naver.com");
	//내장객체 response에 있는 페이지 이동 메서드 sendRedirect("이동경로")
	//브라우져가 요청 하므로 주소창에는 이동 하려는 페이지 주소가 보임
%>
</body>
</html>