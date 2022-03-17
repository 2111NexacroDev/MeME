<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
	.inner {
		position : absolute;
		width : 300px;
		height : 200px;
		top : 50%;
		left : 50%;
 		margin-top : -100px; 
 		margin-left : -150px;
 		margin-bottom : 50px; 
		text-align: center;
		background-color : #EBB388;
	}
 	.header {
 		height : 20%;
 	}
 	.body {
	 	height : 80%;
	 	padding-left : 50px;
		margin-top : 20px;
	}

	#loginButton {
		background-color : #8F2B00;
		color: white;
		margin-top: 5px;
	}
	button {
		color : #8F2B00;
		font-weight: bold;
		background-color: #EBB388;
		margin-top: 5px;
	}
	
	
</style>
</head>
<body>
	<div class="inner">
	<br>
		<h3 align="center">로그인</h3>
		<div class="content" align="center">
			<form action="/member/login.me" method="post">
				<table>
					<tr>
						<td colspan="2"><input type="text" name="memberId" placeholder="아이디"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="password" name="memberPw" placeholder="비밀번호"></td>	
					</tr>
					<b></b>
					<tr align="center">
						<td><button id="loginButton" type="submit">로그인</button></td>
						<td><button id="joinButton" type="button" onclick="location.href='/member/join.me'">회원가입</button>
					</tr>
					<tr align="center">
						<td colspan="2"><button type="button" onclick="location.href='/member/findId.me'">아이디/비밀번호 찾기</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>