<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>timeline</title>

<style>
button:hover {
	background: #f26522;
}

.btn_tooltip {
 	position: relative;
	width: 120px;
	height: 30px;
	display: block;
}

.btn_tooltip .tooltiptext {
	visibility: hidden; /* 이벤트가 없으면 툴팁 영역을 숨김 */
	width: 280px;
	height: 100px; /* 툴팁 영역의 넓이를 설정 */
	background-color: black;
	font-size: 5px;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute; /* 절대 위치를 사용 */
	left : 125px;
	z-index: 1;
}

.btn_tooltip .tooltiptext .more {
	color: gray;
	font-size: 2px;
	font-style: italic;
}

.btn_tooltip:hover .tooltiptext {
	visibility: visible; /* hover 이벤트 발생시 영역을 보여줌 */
}

</style>
</head>
<body>
	<br>
	<br>
	<h1 align="center">유행어 타임라인</h1>
	<br>
	<hr>
	<br>
	<div align="center">
		<h3>2000년 이전</h3>

		<c:forEach items="${memeTimeline }" var="tFirstList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tFirstList.memeName }';">${tFirstList.memeName }
				<span class="tooltiptext">${tFirstList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

	<div align="center">
		<h3>2001년 - 2005년</h3>
		<c:forEach items="${memeSecondTimeline }" var="tSecondList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tSecondList.memeName }';">${tSecondList.memeName }
				<span class="tooltiptext">${tSecondList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

	<div align="center">
		<h3>2006년 - 2010년</h3>
		<c:forEach items="${memeThirdTimeline }" var="tThirdList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tThirdList.memeName }';">${tThirdList.memeName }
				<span class="tooltiptext">${tThirdList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

	<div align="center">
		<h3>2011년 - 2015년</h3>
		<c:forEach items="${memeFourthTimeline }" var="tFourthList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tFourthList.memeName }';">${tFourthList.memeName }
				<span class="tooltiptext">${tFourthList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

	<div align="center">
		<h3>2016년 - 2020년</h3>
		<c:forEach items="${memeFifthTimeline }" var="tFifthList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tFifthList.memeName }';">${tFifthList.memeName }
				<span class="tooltiptext">${tFifthList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

	<div align="center">
		<h3>2021년</h3>
		<c:forEach items="${memeSixthTimeline }" var="tSixthList">
			<button class="btn_tooltip"
				onclick="location.href='/meme/detail?memeName=${tSixthList.memeName }';">${tSixthList.memeName }
				<span class="tooltiptext">${tSixthList.memeContents } <a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
			</button>
			<br>
		</c:forEach>
	</div>

</body>
</html>