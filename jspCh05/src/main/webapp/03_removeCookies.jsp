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
Cookie c = new Cookie("id","");
//쿠키이름이 id인 모든 쿠키(pinksung이 사라짐)
c.setMaxAge(0); //유효기간을 0으로 하고
response.addCookie(c); //클라이언트로 보냄
%>

<h3>쿠키 삭제 됨</h3>
<a href="02_getCookies.jsp">쿠키 삭제 확인</a>
</body>
</html>