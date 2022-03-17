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
		width : 400px;
		height : 190px;
		top : 200px;
		left : 50%; 
 		margin-left : -200px;
 		margin-bottom : 50px; 
		text-align: center;
	}
 	.header {
 		height : 20%;
 	}
 	.body {
	 	height : 80%;
	 	padding-left : 50px;
		margin-top : 20px;
	}

	.btn_login {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #252525;
		width: 350px;
		height: 60px;
		padding-top: 5px;
		transition-duration: 0.5s;
	}
	.btn_login:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	button {
		color : #252525;
		font-weight: bold;
		background-color: #f9f9f9;
		border-radius: 5px;
		transition-duration: 0.5s;
	}
	button:hover {
		color : #f26522;
		transition-duration: 0.5s;
	}
	.inner_footer {
		position: absolute;
		width: 400px;
		top : 520px;
		left : 50%;
		margin-left : -200px;
		text-align: center;
	}
	#ipt {
		margin-bottom : 10px;
		padding-left : 15px;
		height : 40px;
		width : 350px;
		border-radius: 5px;
		border: 1px solid #808080;
		background-color : #f9f9f9;
	}
	#ipt:focus {
		border: 1px solid #f26522;
		background-color : #ededed;
	}
	tr {
	text-align : center;
	}
	.login_logo {
		margin-bottom : 5px;
	}
</style>
</head>
<body>
	<div class="inner">
	<br>
		<img class="login_logo" width="370px" src="./resources/images/login_logo_2.png">
		<div class="content" align="center">
			<form action="/member/login.me" method="post">
				<table>
					<tr>
						<td colspan="2"><input type="text" id="ipt" name="memberId" placeholder="아이디"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="password" id="ipt" name="memberPw" placeholder="비밀번호"></td>	
					</tr>
					<tr align="center">
						<td><button class="btn_login" id="loginButton" type="submit">로그인</button></td>
					</tr>
					<tr align="center">
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="inner_footer">
		<button class="btn_footer" type="button" onclick="location.href='/member/findId.me'">아이디 찾기</button>&nbsp;&nbsp;&nbsp;
		<button class="btn_footer" type="button" onclick="location.href='/member/findPw.me'">비밀번호 찾기</button>&nbsp;&nbsp;&nbsp;
		<button class="btn_footer" type="button" onclick="location.href='/member/join.me'">회원가입</button>
	</div>
</body>
</html>