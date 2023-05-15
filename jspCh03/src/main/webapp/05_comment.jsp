<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 간단한 인삿말 출력하기(HTML주석) -->
<%--인삿말을 String 변수에 저장한다.(jsp주석) --%>
<%
String name = "Angel"; 
%><!-- name은 로칼 변수 -->
<!-- 로칼변수는 새로운 요청이 아니면 기존 페이지에서는 어디서나 사용 가능 -->
Hello <%=name %>

<% name="Kim"; %>
</body>
</html>