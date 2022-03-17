<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
	.inner {
	position : absolute;
	width : 300px;
	height : 300px;
	top : 50%;
	left : 50%;
	margin-top : -130px;
	margin-left : -150px;
	padding-bottom : 50px;
	background-color : #EBB388;
	}
	.header {
	height : 20%;
	padding-top : 15px;
	}
	.body {
	height : 80%;
	margin-top : 5px;
	}
	
	#joinButton {
		background-color : #8F2B00 ;
		color: white;
		margin-top: 10px;
		
	}
	button {
		color : #8F2B00 ;
		font-weight: bold;
		background-color: #EBB388;
		margin-top: 10px;
	}
	
</style>
</head>
<body>
	<div class="inner">
		<div class="header">
			<h3 align="center">회원가입</h3>		
		</div>
		<div class="body">
			<form action="/member/join.me" method="post">
				<table align="center">
					<tr align="center">
						<td colspan="2"><input type="text" name="memberId" placeholder="아이디"></td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="password" name="memberPw" id="memberPw" placeholder="비밀번호"></td>	
					</tr>
					<tr align="center">
						<td colspan="2"><input type="password" placeholder="비밀번호 확인" disabled></td>	
					</tr>
					<tr align="center">
						<td><input type="text" name="memberName" placeholder="이름" size="6"></td>
						<td><input type="text" name="memberNickname" placeholder="닉네임" size="6"></td>
					<tr align="center">
						<td colspan="2"><input type="text" name="memberEmail" placeholder="이메일"></td>
					</tr>
					<tr align="center">
						<td id="join-button">
							<input id="joinButton" type="submit" value="회원가입">
						</td>
						<td><button type="button" onclick="location.href='/login.me'">돌아가기</button>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	
</body>
</html>