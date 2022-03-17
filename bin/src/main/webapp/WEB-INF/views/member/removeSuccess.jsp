<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 성공</title>
<style>
	.inner {
		position : absolute;
		width : 300px;
		height : 180px;
		top : 50%;
		left : 50%;
		margin-top : -90px;
		margin-left : -150px;
		background-color : #EBB388;
	}
	
	button {
		color : #8F2B00;
		font-weight: bold;
		background-color: #EBB388;
	}
	#successTable {
		margin-top: -10px;
	}
</style>
</head>
<body>
	<div class="inner">
		<br>
		<h3 align="center">회원탈퇴 성공!</h3>
		<br><br>
		<table id="successTable" align="center">
			<tr align="center">
				<td colspan="2"><button type="button" onclick="location.href='/login.me'">로그인 화면으로 돌아가기</button></td>
			</tr>
		</table>
	</div>
</body>
</html>