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
<h3>post 방식으로 한글 깨짐 방지</h3>
<form method="post" action="30_jstlFmt.jsp">
	이름 : <input type="text" name="name">
	<input type="submit" value="전송">
</form>
</body>
</html>