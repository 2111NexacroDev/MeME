<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 목록</title>
</head>
<body>
	<br>
	<br>
	<h1 align="center">사전 목록</h1>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<table align="center" border=1>
		<tr>
			<th>번호</th>
			<th width="300">유행어</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
			<th>첨부파일</th>
		</tr>
		<c:forEach items="${mList }" var="meme">
			</tr>
			<td>${meme.memeNo }</td>
			<c:url var="mDetail" value="/meme/detail">
				<c:param name="memeName" value="${meme.memeName }"></c:param>
			</c:url>
			<td><a href="${mDetail}">${meme.memeName }</a></td>
			<td>${meme.memberNickname }</td>
			<td>${meme.memeDate }</td>
			<td>${meme.memeCount }</td>
			<td>0</td>
			</tr>
		</c:forEach>

 		<tr align="center" height="20">
			<td colspan="6">
				[이전]
				<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
					<c:url var="pagination" value="/meme/list">
						<c:param name="page" value="${p }"></c:param>
					</c:url>
					<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach>
				[다음]
			</td>

	</table>

</body>
</html>