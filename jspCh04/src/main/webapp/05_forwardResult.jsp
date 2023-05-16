<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
//선언 태그로 멤버 변수와 메서드 선언
//스크립트릿에서 동일 이름(로칼)으로 선언시는 가려져 안보임
//선언부에서는 메서드를 이용하여 초기 값 설정 안됨
String age1 = "23";
String name1 = "kook";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">

forward 방식으로 이동된 페이지 <br>
<%= request.getParameter("age")%>
<%= (String)request.getAttribute("name") %>
<%--form에서 입력된 값은 getParameter로 setAttribute로 설정한 값은 getAttribute로 반환
getAttribute는 Object로 반환하므로 하위 객체들은 형변환 해줌--%>
<%
	//로칼변수
	String age1 = request.getParameter("age");
	String name1 = (String)request.getAttribute("name");
%>
<%--표현식은 로칼,멤버 변수 모두 접근,동일한 이름일시는 로칼변수가 보임 --%>
<%= age1 %>
<%= name1 %>

</body>
</html>