<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 수정/삭제 요청</title>
<style>
.request {
	font-weight: bold;
	float: left;
}

.request2 {
	padding-left: 150px
}

#btn-request {
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
		<form id="memeRequestForm" action="/meme/request" method="get"
			enctype="multipart/form-data">
			<input type="hidden" name="memeNo" value="${param.memeNo }">
			<br>
			<div class="request">요청유형</div>
			<div class="request2">
				<select name="memeRequestType">
					<option value="M" selected="selectd">수정</option>
					<option value="D">삭제</option>
				</select>
			</div>
			<br>
			<br>
			<div class="request">유행어</div>
			<div class="request2">
				<input type="text" size="40" name="memeName"
					value=${param.memeName }>
			</div>
			<br>
			<br>
			<div class="request">요청 내용</div>
			<div class="request2">
				<textarea rows="5" cols="45" name="memeRequestContents"></textarea>
			</div>
			<br>
			<br>
			<div align="center">
				<input type="reset" id="btn-reset" value="취소"
					onclick="location.href='/';"> <input id="btn-request"
					type="submit" value="등록하기">
			</div>
		</form>
	</div>



</body>
</html>