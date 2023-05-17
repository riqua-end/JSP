<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--session은 내장 객체,setAttribute(문자열 이름,Object값) --%>
<!-- session은 브라우져당 1개 생성해서 브라우져 종료시까지 유지 -->
<!-- session은 여러개의 속성을 가질수 있음 -->
<!-- session은 httpSession클래스의 내장 객체임 -->
<%
session.setAttribute("id","pinksung");
session.setAttribute("pwd","test1234");
session.setAttribute("age","20");
%>
<h3>세션 설정</h3>

<a href="05_getSession.jsp">설정된 session속성 보기</a><br>
<a href="06_getSession.jsp">설정된 session 모든 속성 보기</a><br>
</body>
</html>