<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
<style>
	.inner {
	position : absolute;
	width : 400px;
	height : 400px;
	top : 250px;
	left : 50%;
	margin-left : -200px;
	}
	
	#mypageNavi {
	/* 	background-color : #75582F; */
		width: 400px;
		height: 50px;
		text-align: center;
	}
	.header {
		height : 10%;
	}
	.body {
		height : 80%;
		margin-top : 5px;
	}
	button {
		color : #252525;
		font-weight: bold;
		border-radius: 5px;
		transition-duration: 0.5s;
	}
	button:hover {
		color : #f26522;
		transition-duration: 0.5s;
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
	.btn_id {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #252525;
		width: 170px;
		height: 40px;
		padding-top: 3px;
		transition-duration: 0.5s;
	}
	.btn_id:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	.btn_pw {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #f26522;
		width: 170px;
		height: 40px;
		padding-top: 3px;
	}
	.btn_pw:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	.btn_submit {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #252525;
		width: 350px;
		height: 60px;
		padding-top: 5px;
		transition-duration: 0.5s;
	}
	.btn_submit:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	
</style>
</head>
<body>
	<div class="inner">
		<b></b>
		<div style="margin-top:20px">
			<h3 align="center">회원가입 성공!</h3>
		</div>
		
		<br><br>
		<table id="successTable" align="center" >
			<tr align="center">
				<td colspan="2"><button class="btn_submit" type="button" onclick="location.href='/login.me'">로그인 화면으로 돌아가기</button></td>
			</tr>
		</table>
	</div>
</body>
</html>