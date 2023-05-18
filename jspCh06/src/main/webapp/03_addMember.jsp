<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8"); //post 방식에서 한글 깨짐 방지
%>
<%--useBean액션 태그로 빈 클래스의 객체 생성 --%>
<jsp:useBean id="member" class="com.ezen.jspCh06.MemberBean"/>
<%--form의 입력을 member빈 클래스의 멤버변수(필드)에 저장 --%>
<jsp:setProperty name="member" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>입력 완료된 회원 정보</h2>
<table>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="member" property="name"/></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="member" property="userid"/></td>
	</tr>
	<tr>
		<td>별명</td>
		<td><jsp:getProperty name="member" property="nickname"/></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty name="member" property="pwd"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><jsp:getProperty name="member" property="email"/></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><jsp:getProperty name="member" property="phone"/></td>
	</tr>
		
</table>
</body>
</html>