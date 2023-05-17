<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>클라이언트로부터 얻어온 Cookie</h3>
<%--개발자가 만드는 쿠키외에 서버가 자동 생성하는 기본 쿠키 JSESSIONID를 가짐 --%>
<%--동일 서버에서 유효기간이 남은 쿠키인 id=pinksung은 남아있어서 보이나 유효기간을 안준 남은 쿠키는
request 가 종료되면 사라짐 --%>
<%
Cookie[] cookies = request.getCookies();
for (Cookie c : cookies) {
	out.println(c.getName() + " : " + c.getValue() + "<br>");
}
%>
</body>
</html>