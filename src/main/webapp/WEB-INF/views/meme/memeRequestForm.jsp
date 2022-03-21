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

.main2 {
	border: 1px solid #ccc;
	background-color: #ffffff;
	border-radius: 5px;
	align: center;
	width: 700px;
	margin: 0 auto;
	margin-top: 20px;
	padding: 30px 0 30px 70px;
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

hr {
	margin-top: 10px;
	margin-bottom: 10px;
}


#memeRequestContents {
	height: 200px;
	resize: none;
	border: none;
}

</style>
</head>
<body>
	<div class="main2">
		<form id="memeRequestForm" action="/meme/request" method="get"
			enctype="multipart/form-data">
			<input type="hidden" name="memeNo" value="${param.memeNo }">
			<div class="request">요청유형</div>
			<div class="request2">
				<select name="memeRequestType" style="border:none; width: 70px;">
					<option value="M" selected="selectd">수정</option>
					<option value="D">삭제</option>
				</select>
			</div>
			<hr style="width:670px; text-align:center; margin-left: -55px">
			<div class="request">유행어</div>
			<div class="request2">
				<input type="text" size="40" name="memeName"
					value=${param.memeName } style="border:none;">
			</div>
			<hr style="width:670px; text-align:center; margin-left: -55px">
			<div class="request">요청 내용</div>
			<div class="request2">
				<textarea rows="5" cols="45" id="memeRequestContents" 
				name="memeRequestContents" placeholder="요청 사항을 입력해주세요"></textarea>
			</div>
			<hr style="width:670px; text-align:center; margin-left: -55px">
			<div align="right" height="50px" style="padding:15px; margin-bottom: -20px;">
				<input type="reset" id="btn-reset" value="취소"
					onclick="location.href='/';"> <input id="btn-request"
					type="submit" value="등록하기">
			</div>
		</form>
	</div>



</body>
</html>