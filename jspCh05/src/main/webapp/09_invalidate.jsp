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

<%
session.setAttribute("s_name1", "저는 세션에 저장된 첫번째 값이에요. ^_^");
session.setAttribute("s_name2", "저는 세션에 저장된 두번째 값이에요. ^_^");
session.setAttribute("s_name3", "저는 세션에 저장된 세번째 값이에요. ^_^");
out.print("<h3> >> 세션값을 삭제하기 전 << </h3> ");
Enumeration<String> names;
names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}
session.invalidate(); //세션 완전 제거

out.println("<hr><h3>세션을 제거후 </h3>");
out.println("<hr><h3>세션이 유효할까요? </h3>");

if(request.isRequestedSessionIdValid() == true) {
	out.println("세션이 유효합니다 <hr/>");
}
else {
	out.println("세션이 유효하지 않습니다.<hr/>");
}
%>
</body>
</html>