<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
b {
	font-size: 20px;
}
</style>
</head>
<body>

<h2>설문 조사 결과</h2>
<%
	//자바코드를 사용하는 scriptlet
	//스크립트릿에서는 자바방식,jsp제공 내장 객체 사용
	//request,out내장 객체를 사용
	//html내용은 out.print()의 매개변수인 문자열로 작성\
	//getParameter로 반환값은 모두 문자열
	request.setCharacterEncoding("UTF-8"); //post방식으로 요청시는 한글처리 별도,getParameter()사용 이전
	String name = request.getParameter("name"); //input nam="name"
	out.print("이름 : <b>" + name + "</b><br/>");
	String gender = request.getParameter("gender");
	//input의 name="gender"로 입력값 반환,type="radio" 는 단일 값이므로 getParameter()사용
	out.println("성별 : ");
	if (gender.equals("male")) {
		out.print("<b>남자</b><br/>");
	}
	else {
		out.print("<b>여자</b><br/>");
	}
	
	String[] seasonArr = request.getParameterValues("season");
	//form에서 다수개 값 선택이 가능한 type="checkbox"나 <select multiple>일시는 getParameterValues()를 사용하고
	//반환값은 문자열 배열이다
	out.println("당신이 좋아하는 계절은");
	for (String season : seasonArr){
		int n = Integer.parseInt(season);
		switch (n) {
		case 1:
			out.println("<b> 봄 </b> 입니다.");
			break;
		case 2:
			out.println("<b> 여름 </b> 입니다.");
			break;
		case 3:
			out.println("<b> 가을 </b> 입니다.");
			break;
		case 4:
			out.println("<b> 겨울 </b> 입니다.");
			break;
		}
	}

%>

<br>
<b><a href='javascript:history.go(-1)'>다시</a></b>

</body>
</html>