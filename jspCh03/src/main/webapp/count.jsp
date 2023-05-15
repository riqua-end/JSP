<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int global_cnt = 0;
%>
<!-- 선언부의 변수는 전역변수(멤버변수),서블릿은 한번만 생성되고 기존것 사용하므로 값은 유지 -->
<%-- 선언태그는 DOCTYPE위에 관례적으로 둠 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 스크립트릿으로 자바 코드를 서술,_jspService()내에 포함되어 실행 --%>
<%
int local_cnt = 0; //로칼변수
out.print("<br> local_cnt : ");
out.print(++local_cnt);
out.print("<br> global_cnt : ");
out.print(++global_cnt);
%>
</body>
</html>