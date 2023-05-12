<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- %는 jsp태그(html 주석은 소스보기에서 보임) -->
<%
//자바 코드를 사용하는 태그명이 스크립트릿인 태그
int num1 = 20;
int num2 = 10;
int add = num1+num2;
out.print(num1+ "+" + num2 + "=" + add); //html에 출력
//out은 printWriter out = response.getWriter();
//jsp가 제공하는 미리 만들어진 내장 객체
%>
<%--jsp의 주석(브라우져의 소스보기로 안보임) --%>



</body>
</html>