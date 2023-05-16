<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 리다이렉트 방식으로 페이지가 이동됨
pageContext 내장 객체의 속성값 뿐만 아니라 request 객체가 새로 생성되어
이전 페이지에서 request 객체에 설정한 속성 값이 유실됨 --%>
하나의 페이지 속성 : <%=pageContext.getAttribute("name") %><br>
하나의 요청 속성 :<%=request.getAttribute("name") %><br>
하나의 세션 속성 :<%=session.getAttribute("name") %><br>
하나의 애플리케이션 속성 :<%=application.getAttribute("name") %>
</body>
</html>