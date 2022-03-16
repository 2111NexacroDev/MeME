<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 수정/삭제 요청</title>
</head>
<body>
	<br>
	<br>
	<h1 align="center">사전 수정/삭제 요청</h1>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<form action="/meme/modify" method="get" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td>요청 유형</td>
				<td><select name="memeRequestType">
						<option value="M" selected="selectd">수정</option>
						<option value="D">삭제</option>
				</td>
			</tr>
			<tr>
				<td>유행어</td>
				<td><input type="text" size="50" name="memeName" value=${param.memeName }></td>
			</tr>
			<tr>
				<td>요청 내용</td>
				<td><textarea rows="5" cols="50" name="memeRequestContents"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" name="uploadFile"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="등록">
			</tr>
		</table>
	</form>
	

</body>
</html>