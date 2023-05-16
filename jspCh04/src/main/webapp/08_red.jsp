<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

이 파일은 red.jsp입니다.<br>
브라우저에 배경색이 빨간색으로 나타날까여?<br>
노란색으로 나타날까요?<br>
forward액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.<br>
<jsp:forward page="08_yellow.jsp" />
<%--jsp:forward액션 태그를 사용하여 forward.dispatcher.forward(request,response)와 동일 기능--페이지 이동시 주소창 변경 없음 --%>
</body>
</html>