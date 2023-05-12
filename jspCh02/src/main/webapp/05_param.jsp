<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05param</title>
<script src="js/param.js"></script>
</head>
<body>

<form method="get" action="ps" name="frm">
	아이디 : <input type="text" name="id"><br>
	나 &nbsp;이 :<input type="text" name="age"><br>
	<input type="submit" value="g전송" onclick="return check()">
</form>

<br><br>
<form method="post" action="ps" name="frm">
	아이디 : <input type="text" name="id"><br>
	나 &nbsp;이 :<input type="text" name="age"><br>
	<input type="submit" value="p전송" onclick="return check()">
	<!-- submit에 onclick을 사용하면 onclick이 우선으로 submit취소 -->
	<!-- 함수 반환값이 false이면 onclick작업 초기화 -->
</form>

</body>
</html>