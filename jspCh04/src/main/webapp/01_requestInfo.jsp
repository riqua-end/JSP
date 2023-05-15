<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--request 내장 객체가 가지는 요청 관련 메서드들 --%>
컨텍스트 패스 : <%=request.getContextPath() %> <br> <%--/jspCh04는 프로젝트명 --%>
요청방식 : <%=request.getMethod() %> <br> <%--주소창 요청이나 a링크 요청은 GET --%>
요청한 URL : <%=request.getRequestURL() %> <br>
<%--http://localhost:8181/jspCh04/requestInfo.jsp로 전체경로 --%>
요청한 URI : <%=request.getRequestURI() %> <br>
<%-- /jspCh04/requestInfo.jsp로 host:port를 제외하고 쿼리 스트링을 제외한 경로 --%>
서버의 이름 : <%=request.getServerName() %><br> <%--localhost --%>
프로토콜 : <%=request.getProtocol() %> <br> <!-- HTTP/1.1 -->
</body>
</html>