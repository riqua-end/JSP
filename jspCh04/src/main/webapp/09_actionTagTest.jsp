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
	//액션태그도 스크립트릿안에서 사용 못함
	//form에서 입력한 값이나 주소줄 또는 a링크에서 사용한 쿼리스트링은 이동된 페이지에서 getParameter()메서드로 반환
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
	if(loginCheck.equals("user")){
%>
	<%--액션태그는 스크립트릿안이 아닌 밖에서 처리
	param액션태그는 파라메터값을 name속성과 value속성으로 처리 --%>
	<jsp:forward page="09_userMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("전고객","UTF-8") %>' name="userName" />
	</jsp:forward>
<%
	}
	else {
%>		
	<jsp:forward page="09_managerMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("성관리","UTF-8") %>' name="userName" />
	</jsp:forward>	
<%
	}
%>		
</body>
</html>