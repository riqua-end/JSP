<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>사용자로 로그인 성공</h3>
userName : 
<%=URLDecoder.decode(request.getParameter("userName"),"UTF-8") %>
(<%=request.getParameter("userID") %>) 님 환영합니다.
<%--userName jsp:param에서 추가한 정보로 getParameter로 반환 --%>
</body>
</html>