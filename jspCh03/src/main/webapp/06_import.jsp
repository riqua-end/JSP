<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- import하기 위해 시작되는 문자 치고 CTRL+space로 눌러 리스트중 선택 -->
<%
Calendar date = Calendar.getInstance();
SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>
<!-- Calendar객체를 Date객체로 변환은 cal객체.getTime()으로 변환 -->
오늘은 <b> <%=today.format(date.getTime()) %></b>입니다. <br>
지금 시각은 <b> <%=now.format(date.getTime()) %></b>입니다.
</body>
</html>