<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
//선언문 태그 자바코드 사용 글로벌변수로 이 페이지 어디서나 사용 가능
String str = "안녕하세요!"; //멤버변수(변환되는 서블릿에서,jsp내부에서는 어디서나 사용)
int a = 5,b = -1;

public int abs(int n){ //멤버 메서드
	if (n < 0){
		n = -n;
	}
	return n;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
//out은 출력을 처리하는 내장 객체,선언문 태그에서 만든 변수나 메서드 활용
out.print(str + "<br>");
out.print(a + "의 절대값 : " + abs(a) + "<br>");
out.print(b + "의 절대값 : " + abs(b) + "<br>");
%>
</body>
</html>