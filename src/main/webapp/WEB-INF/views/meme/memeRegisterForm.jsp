<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 등재 요청</title>
</head>
<body>
	<br>
	<br>
	<h1 align="center">사전 등재 요청</h1>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<form action="/meme/register" method="POST"
		enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td>유행어</td>
				<td><input type="text" size="50" name="memeName"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" size="50" name="memberNickname" value="${memberNickname }">
					
				</td>
			</tr>
			<tr>
				<td>유행 시기</td>
				<td><input type="date" name="memeDate"></td>
			</tr>
			<tr>
				<td>유행어 설명</td>
				<td><textarea rows="5" cols="50" name="memeContents"></textarea></td>
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