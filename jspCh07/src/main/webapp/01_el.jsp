<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--EL사용 --%>
${"hello"}
${"Hello"}<br>
<%--표현식 expression을 사용 --%>
<%="Hello" %><br>
<%--스크립트릿에서 out.print로 출력 --%>
<% out.print("hello"); %>


</body>
</html>