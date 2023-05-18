<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

당신이 입력한 정보 입니다.(고전적인 방식).<hr>
아이디 : <%=request.getParameter("id") %><br>
비밀번호 : <%=request.getParameter("pwd") %><br><br>
당신이 입력한 정보입니다(EL방식).
<hr>
<%--param은 내장 객체로 EL문에서 사용,param은 getParameter사용 경우에 사용 --%>
아이디 : ${param.id }<br>
비밀번호 : ${param["pwd"] }
</body>
</html>