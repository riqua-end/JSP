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

<%
String[] movieList = {"타이타닉","시네마 천국","혹성 탈출","킹콩"};
pageContext.setAttribute("movieList",movieList);
%>

<%--items에는 EL시는 attribute로 지정해야만 사용 가능 --%>
<!-- scope는 생략 가능 -->
<!-- items속성은 집합체를 가르키는 attribute이름,var은 집합체의 요소 객체-->
<c:forEach var="movie" items="${movieList}">
	${movie}<br>
</c:forEach>
</body>
</html>