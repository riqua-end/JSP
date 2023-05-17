<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 값 얻어오기</h3>
<%--getAttribute(속성명)은 반환이 Object이므로 형변환 처리 --%>
<%--테스트시 setAttribute페이지 실행과 같은 브라우져에서 실행 --%>
<%--브라우져 별로 1개씩의 세션이 주어지고 그 세션에 대해 속성을 setAttribute하므로 모든 사용자가 
각기 다른 세션에서 동작함 --%>
<%
//세션의 속성을 알고있음
String id = (String)session.getAttribute("id");
String pwd = (String)session.getAttribute("pwd");
String age = (String)session.getAttribute("age");
%>

<%--표현식에서 변수명으로 작성 --%>
id : <%=id %><br>
pwd : <%=pwd %><br>
age : <%=age %>
</body>
</html>