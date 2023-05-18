<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--자바의 문자열 비교는 == 일시는 false가 나오고(주소비교) equals가 값을 비교 --%>
자바 코드 <br>
== 연산자 사용 결과 : <%=request.getParameter("id")=="pinksung" %><br>
equals() 사용 결과 : <%=request.getParameter("id").equals("pinksung") %>
</body>
</html>