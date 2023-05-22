<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
<%--현재 시각 객체now --%>
<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
\${now } : ${now }

<fmt:formatDate value="${now }"></fmt:formatDate>
<%--2023.05.22 --%>
date : <fmt:formatDate value="${now }" type="date"></fmt:formatDate>
date : <fmt:formatDate value="${now }" type="time"></fmt:formatDate>
date : <fmt:formatDate value="${now }" type="both"></fmt:formatDate>
defalut : <fmt:formatDate value="${now }" type="both" dateStyle="default"
	timeStyle="default"></fmt:formatDate>
short : <fmt:formatDate value="${now }" type="both" dateStyle="short"
	timeStyle="short"></fmt:formatDate>
medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium"
	timeStyle="medium"></fmt:formatDate>			
long : <fmt:formatDate value="${now }" type="both" dateStyle="long"
	timeStyle="long"></fmt:formatDate>		
full : <fmt:formatDate value="${now }" type="both" dateStyle="full"
	timeStyle="full"></fmt:formatDate>
			
pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" : 
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate>

<%--fmt:formatDate에서 value는 Date객체를 사용하고 기본형은 type=date,dateStyle="default"이다
pattern에 yyyy년 MM월 dd일 hh시 mm분 ss초 형식으로 사용이 제일 무방함 --%>		
</pre>
</body>
</html>