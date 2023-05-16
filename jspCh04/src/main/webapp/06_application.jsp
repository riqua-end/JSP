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
//로칼변수
//application내장 객체는 프로젝트(웹 애플리케이션)당 1개 만 생김
//ServletContext인터페이스를 구현한 객체
String appPath = application.getContextPath(); //jspCh04
String filePath = application.getRealPath("06_application.jsp");

String serverInfo = application.getServerInfo();
//Apache Tomcat
application.setAttribute("name","hyun"); //현재 프로젝트의 모든 jsp에서 사용 가능
String name = (String)application.getAttribute("name");
%>
웹 애플리케이션의 컨텍스트 패스명 <br>
<b><%=appPath %></b><hr>
웹 애플리케이션의 파일 경로명 <br>
<b><%=filePath %></b><br>
컨테이너의 이름과 버전 변환 <br>
<b><%=serverInfo %></b><br>
name속성 값<br>
<b><%=name %></b>
</body>
</html>