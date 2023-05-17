<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>세션에 설정된 모든 값 얻어오기</h3>
<%--지네릭 사용 --%>
<%
//세션의 속성을 알아내어 값을 알아냄
Enumeration<String> names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}
%>
</body>
</html>