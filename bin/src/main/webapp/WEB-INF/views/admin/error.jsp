<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
<style>
	.inner {
		position : absolute;
		width : 300px;
		height : 180px;
		top : 50%;
		left : 50%;
		margin-top : -90px;
		margin-left : -150px;
		background-color : lightgray;
		}
</style>
</head>
<body>
	<div class="inner">
		<h3 align="center">관리자 전용 페이지입니다.</h3>
		<br><br>
		<table align="center">
			<tr align="center">
				<td colspan="2"><button type="button" onclick="location.href='/'">홈으로 돌아가기</button></td>
			</tr>
		</table>
	</div>
</body>
</html>