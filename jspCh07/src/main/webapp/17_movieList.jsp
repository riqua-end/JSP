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

<%--begin은 시작 index,end는 종료 index(포함),count는 반복횟수(1부터) --%>
<!-- cnt는 반복변수 이므로 색인번호 값 -->
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
	${cnt }
	<c:if test="${not status.last }">,</c:if>
</c:forEach>
<br><br>

<table border="1" style="width:100%;text-align:center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	<!-- 색인번호 7부터 10까지 반복 cnt는 반복변수이므로 색인번호와 동일하나 count는 반복횟수이므로 1부터 4나옴 -->
	<c:forEach var="cnt" begin="7" end="10" varStatus="status">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${cnt }</td>
		</tr>
	</c:forEach>
</table>
<br><br><br>
<table border="1" style="width:100%;text-align:center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	<%-- 1부터 10까지 색인번호가 2씩 증가하므로 1,3,5,7,9 --%>
	<c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${cnt }</td>
		</tr>
	</c:forEach>
</table>		
</body>
</html>