<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 
<!--BS 4 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!--icon -->
<!--fontawesome icon-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!--google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="script/board.js"></script>
</head>
<body>

<div style="width:60%;margin:auto;">
	<h1>비밀번호 확인</h1>
	<form action="BoardServlet" method="get" name="frm">
		<input type="hidden" name="command" value="board_check_pass">
		<!-- parameter로 보낸값은 EL에서 param내장 객체 사용 -->
		<!-- hidden도 서버로 보내짐 -->
		<input type="hidden" name="num" value="${param.num}">
		<table style="width:80%">
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" size="20"></td>
			</tr>
		</table>
		<br><input type="submit" value="확 인"
			onclick="return passCheck()">	<br><br>${message} <!-- setAttribute로 지정한 값 -->	
	</form> 
</div>


</body>
</html>