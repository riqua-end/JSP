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

<%--url값에 지정된 서버에 접속하여 출력을 변수 var에 저장 --%>
<%--@include나 jsp:include와 유사--%>
<c:import url="http://localhost:8181/jspCh07/02_el.jsp" var="data"></c:import>
${data }
</body>
</html>