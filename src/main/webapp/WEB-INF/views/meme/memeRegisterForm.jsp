<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 등재 요청</title>
<style>
.register {
	font-weight: bold;
	float: left;
}

.register2 {
	padding-left: 150px
}

#btn-register {
	border: 1px solid #f26522;
	background-color: #fef3ee;
	color: #f26522;
	border-radius: 5px;
	padding: 5px 10px;
	font-size: 13px;
	font-weight: bold;
	margin-right: 5px;
}

#btn-reset {
	border: 1px solid #888;
	background-color: #ffffff;
	color: #888;
	border-radius: 5px;
	padding: 5px 10px;
	font-size: 13px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="main">
		<form action="/meme/register" method="POST"
			enctype="multipart/form-data">
			<br>
			<div class="register">유행어</div>
			<div class="register2">
				<input type="text" size="50" name="memeName">
			</div>
			<br> <br>

			<div class="register">작성자</div>
			<div class="register2">
				<input type="text" size="50" name="memberNickname"
					value="${memberNickname }">
			</div>
			<br> <br>

			<div class="register">유행시기</div>
			<div class="register2">
				<input type="date" name="memeDate">
			</div>
			<br> <br>

			<div class="register">유행어 설명</div>
			<div class="register2">
				<textarea rows="5" cols="55" name="memeContents"></textarea>
			</div>
			<br> <br>

			<div class="register">첨부파일</div>
			<div class="register2">
				<input type="file" name="uploadFile">
			</div>
			<br> <br>

			<div align="center">
				<input type="reset" id="btn-reset" value="취소" onclick="location.href='/';"> 
				<input id="btn-register" type="submit" value="등록하기">
			</div>
		</form>
	</div>
</body>
</html>