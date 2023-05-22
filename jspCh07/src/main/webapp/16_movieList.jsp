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
<%--varStatus속성값에서 first속성은 처음 요소면 true,last는 마지막 요소이면 true --%>
<!-- ul안에 li를 만들어줌 -->
<ul>
	<c:forEach var="movie" items="${movieList }" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight:bold;color:red;">${movie }</li>
			</c:when>
			<c:otherwise>
				<li>${movie}</li>
			</c:otherwise>
		</c:choose>		
	</c:forEach>
</ul>
<%--not연산자는 논리 연산자,비교 연산은 다르다는 !=이나 ne --%>
<c:forEach var="movie" items="${movieList }" varStatus="status">
	${movie }
	<c:if test="${not status.last }">,</c:if>
</c:forEach>	
</body>
</html>