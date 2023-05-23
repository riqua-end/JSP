<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%!

//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
//가능하면 doctype위에 작성
//글로벌 변수
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";
String pass = "tiger";
String sql = "insert into member values(?,?,?,?,?,?)"; //?는 바인딩 변수
//insert문에서 컬럼명이 없이 사용시는 테이블의 컬럼순서대로 빠짐없이 값을 대입

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
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
</head>
<body>

<%
request.setCharacterEncoding("UTF-8"); //post시 한글 입력 데이터 깨짐 방지

String name = request.getParameter("name");
String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String admin = request.getParameter("admin"); //form에서 오는건 모두 String

try {
	//(1단계) JDBC 드라이버 로드하여 DriverManager에 등록
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//(2단계) 데이터베이스 연결 객체인 Connection 생성
	conn = DriverManager.getConnection(url,uid,pass);
	//3단계. PreparedStatement 객체 생성
	pstmt = conn.prepareStatement(sql);
	//4단계. 바인딩 변수를 채운다.
	//숫자는 물음표 순서로 1부터 시작
	pstmt.setString(1, name);
	pstmt.setString(2,userid);
	pstmt.setString(3,pwd);
	pstmt.setString(4,email);
	pstmt.setString(5,phone);
	pstmt.setInt(6,Integer.parseInt(admin)); //DB의 컴럼이 number이므로 setInt
	//5단계. SQL문을 실행하여 결과 처리
	pstmt.executeUpdate(); //DML중 insert,update,delete시 사용
	//executeQuery()는 select문시 사용
	//자바에서 DML사용시는 자동 commit되므로 commit할 필요 없음
}
catch (Exception e) {
	e.printStackTrace();
}
finally {
	try {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
}
%>

<h3>회원 가입 성공</h3>
<a class="btn btn-primary" href="01_allMember.jsp">회원 전체 목록 보기</a>
</body>
</html>

<!-- 
<Resource 
		name="jdbc/myoracle" 
		auth="Container"
        type="javax.sql.DataSource"
        driverClassName="oracle.jdbc.OracleDriver"
        url="jdbc:oracle:thin:@127.0.0.1:1521:XE"
        username="scott"
        password="tiger"
        maxTotal="20"
        maxIdle="10"
        maxWaitMillis="-1"/>
 -->

