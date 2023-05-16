<%@page import="java.net.URLEncoder"%>
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
//변수는 로칼 변수,request가 새로운 리퀘스트이면 로칼변수는 초기화,같은 리퀘스트일시는 어디서나 사용
String id="pinksung";
String pwd="1234";
String name="하하하";
request.setCharacterEncoding("UTF-8");
//post방식으로 보낼시 form에서 입력한 한글 깨짐 방지
if(id.equals(request.getParameter("id"))&& pwd.equals(request.getParameter("pwd"))){
	response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name,"UTF-8"));
	//sendRedirect시에 쿼리 스트링으로 name의 값으로 변수 name값인 하하하를 UTF-8로 보냄
	//주소창을 이용해서 보낼시는 get방식이고 ?이름=값&이름=값
	//?뒤의 문장을 쿼리스트링이라 한다
}
else {
	response.sendRedirect("04_loginForm.jsp");
}
%>
</body>
</html>