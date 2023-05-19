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
pageContext.setAttribute("name", "page man");
request.setAttribute("name","request man");
session.setAttribute("name","session man");
application.setAttribute("name","application man");
%>
<%--동일 속성 name이름만 사용하면 가장 빨리 추출하는 pageScope 선택 --%>
name : ${name }
<hr>
<%--EL의 내장 객체별로 속성을 사용 --%>
page 속성 : ${pageScope.name }<br>
request 속성 : ${requestScope.name }<br>
session 속성 : ${sessionScope.name }<br>
application 속성 : ${applicationScope.name }<br>
</body>
</html>