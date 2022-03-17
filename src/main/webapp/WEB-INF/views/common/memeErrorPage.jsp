<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유행어 사전 오류페이지</title>
<style>

/* 	.message {
	text-align : center;
	position : absolute;
	top : 45%;
	left : 30%;
	} */
	.main{
		text-align : center;
	}
</style>

</head>
<body>
	<div>
		<div class="main">
			<h3>혹시, 이것을 찾으시나요?</h3>
			<br>
		</div>
		<div class="add">
			<h4 align="center">
				<strong>${msg }</strong>&emsp;&emsp;<a href="/meme/registerView">
					>>등록하러가기 </a>
			</h4>
		</div>
	</div>
</body>
</html>
