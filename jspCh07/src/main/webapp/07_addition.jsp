<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

고전적인 방식 :
<%
int num1 = (Integer)request.getAttribute("num1"); //setAttribute()로 지정한 속성을 반환
//setAttribute로 설정된 attribute는 getAttribute(속성명)로 반환 (반환 타입이 Object이므로 형변환)
int num2 = (Integer)request.getAttribute("num2");
%>
<!-- 표현식에서는 num1,num2는 변수명 -->
<%=num1 %> + <%=num2 %> = <%=num1 + num2 %>

<hr>

<%--설정시 request에 속성을 저장 했으므로 requestScope.num1이나 EL의 내장 객체는 자동 처리 --%>
<!-- 형변환도 없이 속성 이름만 사용 -->
<!-- EL에서는 속성(attribute)명 -->
EL 방식 :
${num1 } + ${num2 } = ${add }
</body>
</html>