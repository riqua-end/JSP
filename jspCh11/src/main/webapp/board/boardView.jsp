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
				<h4 class="text-center wordArtEffect text-success">게시글 조회</h4>
				
				<form action="#" method="post" id="freg" name="frm" role="form">
					<!-- form에서 name=command에 처리할 비지니스로직 요청을 사용 -->
					<!-- name속성은 boardVO클래스의 멤버 변수명과 매핑한다 -->
					<input type="hidden" name="command" value="board_write">
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" 
							 name="name" value='<c:out value="${board.name}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="email">이메일:</label>
						<input type="email" class="form-control" id="email" 
							 name="email" value='<c:out value="${board.email}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="wdate">작성일:</label>
						<input type="text" class="form-control" id="wdate" 
							 name="writedate" value='<c:out value="${board.writedate}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="rcnt">조회수:</label>
						<input type="text" class="form-control" id="rcnt" 
							 name="readcount" value='<c:out value="${board.readcount}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" 
							 name="title" value='<c:out value="${board.title}"/>' readonly/>
					</div>
					<div class="form-group">
						<label for="content">내용:</label> <!-- textarea는 c:out value값을 <textarea>(여기다 입력)</textarea> -->
						<textarea class="form-control" id="content" 
							name="content" rows="15" readonly><c:out value="${board.content}"/></textarea>
					</div>
				</form>
				
				<br><br>
				<input type="button" class="btn btn-success" value="게시글 수정"
					onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}','update')">&nbsp;&nbsp;
				<input type="button" class="btn btn-danger" value="게시글 삭제"
					onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}','delete')">&nbsp;&nbsp;
				<input type="button" class="btn btn-info" value="게시글 리스트"
					onclick="location.href='BoardServlet?command=board_list'">&nbsp;&nbsp;
				<input type="button" class="btn btn-primary" value="게시글 등록"
					onclick="location.href='BoardServlet?command=board_write_form'">
			</div> <!-- submain -->
		</div><!-- col-md-10 -->
	</div><!-- row -->
</div><!-- main -->
<%@include file="../include/footer.jsp" %>
</body>
</html>