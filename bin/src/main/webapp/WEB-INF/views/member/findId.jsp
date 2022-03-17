<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
	.inner {
	position : absolute;
	width : 300px;
	height : 250px;
	top : 50%;
	left : 50%;
	margin-top : -125px;
	margin-left : -150px;
	background-color : #EBB388;
	}
	
	#mypageNavi {
	/* 	background-color : #75582F; */
		font-weight: bold;
		width: 500px;
		height: 50px;
		text-align: center;
		align: center;
		margin: auto;
	}
	
	#mypageNavi ul {
		list-style-type : none;
		padding-left : 60px;
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
	
	.header {
		height : 20%;
		margin-left : 20px;
	}
	.body {
		height : 80%;
		margin-top : 5px;
	}
	
	#findButton {
		background-color : #8F2B00 ;
		color: white;
		margin-top: 10px;
	}
	button {
		color : #8F2B00;
		font-weight: bold;
		background-color: #EBB388;
		margin-top: 10px;
	}
	
</style>
</head>
<body>
	<div class="inner">
	<br><br>
		<div id="mypageNavi">
			<ul>
				<li>아이디 찾기</li>
				<li><a href="/member/findPw.me">비밀번호 찾기</a></li>
			</ul>
		</div>
		<div class="body">
			<form action="/member/findId.me" method="post">
				<table align="center">
					<tr align="center">
						<td colspan="2"><input type="text" name="memberName" placeholder="이름"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="text" name="memberEmail" placeholder="이메일"></td>
					</tr>
					<tr align="center">
						<td>
							<button id="findButton" type="submit">아이디 찾기</button>
						</td>
						<td><button type="button" onclick="location.href='/login.me'">돌아가기</button>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>