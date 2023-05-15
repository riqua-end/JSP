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
//자바 문법을 사용하는 스크립트릿
int count=0;
out.print("count : ");
//out은 출력객체인 내장 객체로 jspWriter 객체임,PrintWriter out객체와 유사
out.println(++count);
%>
</body>
</html>