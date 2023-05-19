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
<c:set var="msg" value="hello"></c:set>
<%--변수 msg설정 및 값 설정 scope는 생략되어 page --%>
\${msg } = ${msg }<br>
<%--\${}는 EL을 문자열로 간주 --%>
<c:set var="age">30</c:set>
\${age } = ${age }<br>
<%--value에 내용 추가 --%>

<c:set var="member" value="<%=new com.kim.ch07.MemberBean() %>"></c:set>
<%--빈 클래스를 변수로 설정하는 법 --%>

<c:set target="${member }" property="name" value="전수빈"></c:set>
<c:set target="${member }" property="userid">pinksubin</c:set>
<%--변수로 설정된 빈을 사용시는 target속성을 사용하고 EL로 값 지정 --%>
<%--bean클래스의 멤버 변수 설정은 property에 멤버 변수명 value에 값을 작성하거나 콘텐츠에 값 --%>
\${member } = ${member }<hr>
<c:set var="add" value="${10+5 }"></c:set>
<!-- value에서 EL을 사용하고 연산자 사용 -->
\${add } = ${add }<br>
<c:set var="flag" value="${10 > 5 }"></c:set>
<%--value값을 EL 비교연산 사용 가능 --%>
\${flag } = ${flag }<br>
<c:remove var="age"/>
<%--변수 제거 --%>
<c:out value="${flag }"></c:out>
<%--EL만 사용하는 것보다 c:out 사용 권고 --%>
EL만 사용하여 출력 : ${flag}
</body>
</html>