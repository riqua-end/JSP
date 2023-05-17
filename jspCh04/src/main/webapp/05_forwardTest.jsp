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
	int age=Integer.parseInt(request.getParameter("age"));
	//getParameter반환값은 전부 String
	if(age <= 19){
%>
<%--if문 안에서 실행될 코드가 jsp가 아닌 html 이면 스크립트릿을 종료하고 html을 넣고 html이 끝나면 다시 스크립트릿을 시작 --%>
<script type="text/javascript">
	alert("19세 미만이므로 입장 불가능")
	history.go(-1)
</script>
<%
	}
	else {
		request.setAttribute("name", "성윤정");
		//request 내장 객체에 추가 정보를 넣어줄시는 setAttribute("attribute명",값)
		//forward방식의 페이지 이동을 이용하기 위해 RequestDispatcher객체를 얻어내야 함
		//RequestDispatcher객체는 request.getRequestDispatcher("이동할 url")로 얻어냄
		RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
		//forward(request,response)로 이동 실행
		//주소창은 현재 그대로 이고 이동 url는 안보임
		dispatcher.forward(request,response);
	}
%>
</body>
</html>