<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--빈클래스의 객체를 setAttribute()로 설정할시는 attribute(속성)이름.빈클래스의 멤버 변수명 --%>
<%--request객체에 setAttribute했으므로 request의 EL 내장 객체인 requestScope.name이나 --%>
<%-- 생략 가능, .연산자 대신 ["attribute명"] 으로도 사용 가능 --%>
<%--setAttribute로 설정시 이름을 member로 했고 값은 bean클래스 객체 member로 했음 --%>
<%--request의 attribute로 설정했으므로 requestScope.member이나 scope는 생략 --%>
이름 : ${member.name }<br> <!-- member bean클래스에 getter를 호출 -->
아이디 : ${member["userid"]}<br>
</body>
</html>