<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09checkbox</title>
</head>
<body>

<h2>악세사리</h2>
관심항목을 선택하세요.
<hr>
<!-- action은 서블릿 URL패턴 @WebServlet값 -->
<form method="get" action="cs">
	<input type="checkbox" name="item" value="신발">신발
	<input type="checkbox" name="item" value="가방">가방
	<input type="checkbox" name="item" value="벨트">벨트<br>
	<input type="checkbox" name="item" value="모자">모자
	<input type="checkbox" name="item" value="시계">시계
	<input type="checkbox" name="item" value="쥬얼리">쥬얼리<br>
	<input type="submit" value="전송">
</form>

<!-- 동일한 그룹은 name속성값이 동일 ?item=신발&item=가방& -->
</body>
</html>