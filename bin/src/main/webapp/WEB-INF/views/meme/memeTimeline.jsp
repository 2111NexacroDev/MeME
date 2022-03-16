<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>timeline</title>
<style>
	button{
		width: 120px;	
	}
	button:hover{
		background : #f26522;
	}
</style>
</head>
<body>
	<br>
	<br>
	<h1 align="center">TimeLine</h1>
	<br>
	<hr>
	<br>
	<div align="center">
		<h3>2000년 이전</h3>
		<c:forEach items="${memeTimeline }" var="tFirstList">
			<%-- <button class="timelineBTN">${tFirstList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tFirstList.memeName }';">${tFirstList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>

	<div align="center">
		<h3>2001년 - 2005년</h3>
		<c:forEach items="${memeSecondTimeline }" var="tSecondList">
			<%-- <button class="timelineBTN">${tSecondList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tSecondList.memeName }';">${tSecondList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>

	<div align="center">
		<h3>2006년 - 2010년</h3>
		<c:forEach items="${memeThirdTimeline }" var="tThirdList">
			<%-- <button class="timelineBTN">${tThirdList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tThirdList.memeName }';">${tThirdList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>

	<div align="center">
		<h3>2011년 - 2015년</h3>
		<c:forEach items="${memeFourthTimeline }" var="tFourthList">
			<%-- <button class="timelineBTN">${tFourthList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tFourthList.memeName }';">${tFourthList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>

	<div align="center">
		<h3>2016년 - 2020년</h3>
		<c:forEach items="${memeFifthTimeline }" var="tFifthList">
			<%-- <button class="timelineBTN">${tFifthList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tFifthList.memeName }';">${tFifthList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>

	<div align="center">
		<h3>2021년</h3>
		<c:forEach items="${memeSixthTimeline }" var="tSixthList">
			<%-- <button class="timelineBTN">${tSixthList.memeName }</button> --%>
			<button
				onclick="location.href='/meme/detail?memeName=${tSixthList.memeName }';">${tSixthList.memeName }</button>
		</c:forEach>
		<br>
		<br>
	</div>


</body>
</html>