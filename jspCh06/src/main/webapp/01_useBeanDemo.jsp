<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--풀 클래스명이므로 import 필요 없음,id에는 사용할 객체명을 지정 --%>
<%--객체 지정후 빈클래스가 가지고 있는 메서드 호출 사용 --%>
<%--jsp bean객체는 자바의 객체로 사용 scope가 지정 안되면 디폴트는 page --%>
<jsp:useBean id="member" class="com.ezen.jspCh06.MemberBean"/>
0 자바 빈 객체 생성 후 저장된 정보 출력하기
<br>
<br>이름 :
<%=member.getName() %>
<br> 아이디 :
<%=member.getUserid() %>
<hr>
0 정보 변경한 후 변경된 정보 출력하기
<br>
<br>
<%
member.setName("전수빈"); //name이 전수빈으로 변경
member.setUserid("pinksubin");
%>
이름 :
<%=member.getName() %>
<br>
아이디 : 
<%=member.getUserid() %>
</body>
</html>