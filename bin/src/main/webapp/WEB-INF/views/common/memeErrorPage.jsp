<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유행어 사전 오류페이지</title>
<style>
	div{
	text-align : center;
	}
	.message {
	position : absolute;
	top : 45%;
	left : 30%;
	}
	
</style>
</head>
<body>
	<div class="message">
		<h3 align="center">${msg }</h3>
		<div>
		<a href="/meme/registerView"> 등록하러가기 </a>
		</div>
	</div>
</body>
</html>