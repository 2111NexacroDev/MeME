<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<style>
	.inner {
		position : absolute;
		width : 300px;
		height : 200px;
		top : 50%;
		left : 50%;
		margin-top : -100px;
		margin-left : -150px;
		background-color : #EBB388;
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
	<br>
		<h3 align="center">비밀번호 재설정</h3>
		<form action="/member/pwReset.me" method="post">
			<table align="center">
				<tr align="center">
					<td><input type="text" name="memberId" value="${member.memberId }" readonly></td>
				</tr>
				<tr align="center">
					<td><input type="password" name="memberPw" placeholder="비밀번호"></td>	
				</tr>
				<tr align="center">
					<td><button type="submit">비밀번호 재설정</button></td>
				</tr>
			</table>	
		</form>
	</div>
</body>
</html>