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

<c:set var="age" value="30" scope="page">
</c:set>
나이:
<%--내용 부분에 있는 10은 default값으로 값이 있을시는 사용 안함 --%>
<c:out value="${age }">10</c:out>
<br>
<%--변수 age의 값을 제거 --%>
<c:remove var="age" scope="page"></c:remove>
나이:
<!-- 값이 없으면 디폴트로 정의된 10이 나옴 -->
<c:out value="${age }">10</c:out>
<br>
<!-- 예외 발생시 catch역할 ,예외 발생하면 예외 내용을 var에 저장하여 다른 곳에서 사용-->
<c:catch var="errmsg">
예외 발생 전<br>
<%=1/0 %><br>
예외 발생 후<br>
</c:catch>

<c:out value="${errmsg }">></c:out>
</body>
</html>