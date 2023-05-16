<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= request.getParameter("name") %>님 안녕하세요!
<!-- 표현식으로 name이름의 값을 출력 (out.print()) -->
<%--
sendRedirect시 url?name=name형식으로 쿼리로 올시에도 getParameter사용
표현식 %=자바 코드 또는 리터럴,수식을 사용하고 ;은 사용 안해야 한다
 --%>
 <br>
 저희 홈페이지에 방문해 주셔서 감사합니다.<br>
 즐거운 시간 되세요...<br>
</body>
</html>