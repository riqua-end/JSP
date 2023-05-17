<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%= %> 는 표현식, 주로 함수를 호출한 결과를 문자열로 출력할때 많이 씀 --%>
<%-- first페이지에서 이동되면 pageContext내장 객체의 속성 값만 유실됨
페이지 이동을 하면 새로운 page영역을 갖기 때문임 --%>
하나의 페이지 속성 : <%=pageContext.getAttribute("name") %><br>
하나의 요청 속성 :<%=request.getAttribute("name") %><br>
하나의 세션 속성 :<%=session.getAttribute("name") %><br>
하나의 애플리케이션 속성 :<%=application.getAttribute("name") %>
<a href="07_thirdPage.jsp">또 다른 페이지</a>

<!-- a로 링크시는 get방식으로 새로운 request -->
</body>
</html>