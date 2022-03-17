<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
.inner {
/* 		position: absolute; */
		width: 700px;
		height: 600px;
		top: 50%;
		left: 50%;
		text-align: center;
		margin: auto;
	/* 	margin-top: -250px; */
	/* 	margin-left: -350px; */
		background-color: #f9f9f9;
	}
	
	.body {
/* 		height: 80%; */
	}
	.content {
		height : 60%;
		width : 80%;
		margin: auto;
		text-align: center;
	}
	.pi {
		height : 10%;
	}
	.footer {
		height : 10%;
	}

	#mypageNavi {
	/* 	background-color : #75582F; */
		font-weight: bold;
		width: 500px;
		height: 50px;
		text-align: center;
		margin: auto;
	}
	
	#mypageNavi ul {
		list-style-type : none;
		padding-left : 50px;
	}
	
	#mypageNavi li {
		color : #DB4000;
		float : left;
	/* 	background-color : white; */
		padding-right : 10px;
		text-align : center;
	}
	#mypageNavi li a {
		color : black;
		display : block;
		text-decoration : none;
		text-align : center;
	}
	#mypageNavi li a.current {
		color : white;
		background-color : #DB4000;
	}
	
	
	#part {
		width: 35px;
	}
	
	#no {
		width: 50px;
	}
	
	#title {
		width: 150px;
	}
	
	#date {
		width: 100px;
	}
	
	#like {
		width: 50px;
	}
	
	#comment {
		width: 50px;
	}
	#delete {
		width: 35px;
	}
	.content {
		background-color : #EBB388 ;
		width: 50%;
		height: 70%;
		padding-top: 50px;
		padding-bottom: 50px;
	}
	.header {
		color: white;
		background-color: #4A4646;
		height: 30px;
	}
	
	.sub {
		font-size: smaller;
	}
	button {
		color : #8F2B00;
	}
</style>
</head>
<body>


	<div class="inner" align="center">
		<div class="body">

			<br>
			<div id="mypageNavi">
				<ul>
					<li><a href="/admin/manageMember.me">회원 관리</a></li>
					<li><a href="/admin/manageMeme.me">유행어 사전 관리</a></li>
					<li><a href="/admin/manageBoard.me">추진/자유게시판 관리</a></li>
					<li><a href="/admin/manageQuiz.me">퀴즈 관리</a></li>
				</ul>
			</div>
			
			<div class="content">
				<h3>관리자 페이지에 오신것을<br>
					환영합니다.</h3>			
			</div>
		</div>
<!-- 		<div style="text-align:center" class="pi"> -->
<!-- 		</div> -->
		<p></p>
		<div class="footer">
			<button type="button" onclick="location.href='/'">홈으로</button>
			<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
		</div>
		<p></p>
	</div>
</body>
</html>