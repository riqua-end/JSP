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

<script src="script/board.js"></script>
</head>
<body>
<%@include file="../include/header.jsp" %>

<div class="container mt-4 mb-4 pl-0" id="mainContent">
	<div class="row">
		<div class="col-md-2">
			<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
			<nav class="navbar bg-dark navbar-dark container">
				<!-- 수직 메뉴 -->
				<button class="navbar-toggler d-md-none" type="button"
					data-toggle="collapse" data-target="#collapsibleVertical">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse d-md-block" id="collapsibleVertical">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#">
						<i class="fas fa-home" style="font-size:30px;color:white;"></i></a></li>
						<li class="nav-item"><a class="nav-link" href="register">게시물 등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">리스트</a></li>
						<li class="nav-item"><a class="nav-link" href="#">도움말</a></li>
					</ul>
				</div>
			</nav>
		</div> <!-- col-md-2 -->
		<div class="col-md-10"> <!-- 게시물 등록하기 -->
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">게시글 수정</h4>
				
				<form action="BoardServlet" method="post" id="freg" name="frm" role="form">
					<!-- 수정창은 조회창처럼 모든 게시 내용을 보여주며 그것을 수정함 -->
					<!-- 비지니스로직처리를 command 이름으로 보내고 대상을 지정하는 게시글 번호(PrimaryKey)를 숨겨서 보냄 -->
					<input type="hidden" name="command" value="board_update">
					<input type="hidden" name="num" value="${board.num}">
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" 
							 name="name" value='<c:out value="${board.name}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="pw">비밀번호:</label>
						<input type="password" class="form-control" id="pw" 
							 name="pass" placeholder="비밀 번호 입력">
					</div>
					<div class="form-group">
						<label for="email">이메일:</label>
						<input type="email" class="form-control" id="email" 
							 name="email" value='<c:out value="${board.email}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" 
							 name="title" value='<c:out value="${board.title}"/>' />
					</div>
					<div class="form-group">
						<label for="content">내용:</label> <!-- textarea는 c:out value값을 <textarea>(여기다 입력)</textarea> -->
						<textarea class="form-control" id="content" 
							name="content" rows="15"><c:out value="${board.content}"/></textarea>
					</div>
					
					<br><br>
					<input class="btn btn-success" type="submit" value="수정" onclick="return boardCheck()">&nbsp;&nbsp;&nbsp;
					<input class="btn btn-info" type="reset" value="다시 작성">&nbsp;&nbsp;&nbsp;
					<input class="btn btn-danger" type="button" value="목록" onclick="location.href='BoardServlet?command=board_list'">
				</form>
				
				<br><br>
				
			</div> <!-- submain -->
		</div><!-- col-md-10 -->
	</div><!-- row -->
</div><!-- main -->

<%@include file="../include/footer.jsp" %>
</body>
</html>