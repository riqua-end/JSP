<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--div는 /로 동작 안함 --%>
<%--%연산은 mod로도 가능,?는 조건 연산자 --%>
<%--EL문안에 \를 붙이면 에스케이프 문자로 표시 --%>
\${5+2 } : ${5+2 }<br>
\${5/2 } : ${5/2 }<br>
\${5 mod 2 } : ${5 mod 2 }<br>
\${5 > 2 } : ${5 > 2 }<br>
\${2 gt 10 } : ${2 gt 10 }<br>
\${(5>2) ? 5 : 2 } : ${(5 > 2) ? 5 : 2 }<br>
\${(5 > 2) || (2 < 10) } : ${(5 > 2) || (2 < 10) }<br>

<%
String input=null;
%>
<%--empty는 비교 연산자로 null인지 아닌지 체크 null이면 true반환 --%>
\${empty input } : ${empty input }
</body>
</html>