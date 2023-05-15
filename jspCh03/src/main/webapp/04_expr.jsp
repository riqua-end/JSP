<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
String str = "안녕하세요!";
int a = 5,b = -5;

public int abs(int n){
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

<%=str %><br/> <%--선언된 변수 사용 표현식 --%>
<%=a%>의 절대값 :
<%=abs(a) %><br/> <!-- 메서드 호출 사용 표현식 -->
<%=b %>의 절대값 :
<%=abs(b) %><br/>
<%--표현식은 문장 뒤에 ;없음 왜냐면 서블릿의 out.print()의 인자로 사용,출력은 문자열 --%>
<%= 5 * 3 * 3 %>
<%--표현식에 수식 사용 --%>
</body>
</html>