<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TimeLine</title>

<style>

.year{
	font-weight:750;
	font-style:italic;
	line-height:200%;
	background: linear-gradient(to top, #ccc 50%, transparent 50%);
}

.c-header{
	width: 50%;
	float: left;
	font: litalic;
}

.c-main{
	width: 50%;
	float: left;
}
button:hover {
	background: #f26522;
	color:white;
}

.c-main .btn_tooltip {
	position: relative;
	width: 120px;
	height: 33px;
	border-radius: 5px;
	display: block;
}

.c-main .btn_tooltip .tooltiptext {
	visibility: hidden; /* 이벤트가 없으면 툴팁 영역을 숨김 */
	width: 280px;
	height: 80px; /* 툴팁 영역의 넓이를 설정 */
	background-color: black;
	font-size: 13px;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute; /* 절대 위치를 사용 */
	top: 1px;
	left: 125px;
	z-index: 1;

	/* 	말줄임css
	display: -webkit-box;
	-webkit-line-clamp:4;
	-webkit-box-orient:vertical;
	white-space: normal;
	overflow:hidden;
	text-over:ellipsis; */
}

.c-main .btn_tooltip .tooltiptext .more {
	color: #fff;
	font-size: 5px;
	font-style: italic;
}

.c-main .btn_tooltip:hover .tooltiptext {
	visibility: visible; /* hover 이벤트 발생시 영역을 보여줌 */
}
</style>
</head>
<body>

	<script>
		$(document).ready(function() {
			$('.c-main .btn_tooltip .tooltiptext .tooltiptext_text').each(function() {
				var textCut = $(this).text().substring(0, 65);
				$(this).html('<span class="substring">' + textCut+ ' . . .' + '</span>');
				});
			});
	</script>
	
<!-- <div>
	<br>
	<h1 align="center"><strong>유행어 타임라인</strong></h1>
	<br>
	<hr>
</div>	 -->
	<br>
	<div class="main">
		<div class="contents">
			<div class="c-header" align="center">
				<h3><span class="year">2000년 이전</span></h3>
			</div>
			<div class="c-main">	
				<c:forEach items="${memeTimeline }" var="tFirstList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tFirstList.memeName }';">${tFirstList.memeName }
						<span class="tooltiptext"><span class="tooltiptext_text">${tFirstList.memeContents }</span>
							<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>
			</div>
			
			<div class="c-header" align="center">
				<h3><span class="year">2001년</span><br> &emsp;&emsp;<span class="year"> - 2005년 </span></h3>
			</div>
			<div class="c-main">	
				<c:forEach items="${memeSecondTimeline }" var="tSecondList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tSecondList.memeName }';">${tSecondList.memeName }
						<span class="tooltiptext"> <span class="tooltiptext_text">${tSecondList.memeContents } </span>
						<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>
			</div>
			
			<div class="c-header" align="center">
				<h3><span class="year">2006년</span><br> &emsp;&emsp;<span class="year"> - 2010년 </span></h3>
			</div>
			<div class="c-main">	
				<c:forEach items="${memeThirdTimeline }" var="tThirdList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tThirdList.memeName }';">${tThirdList.memeName }
						<span class="tooltiptext"> <span class="tooltiptext_text"> ${tThirdList.memeContents } </span> 
						<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>	
			</div>

			<div class="c-header" align="center">
				<h3><span class="year">2011년</span><br> &emsp;&emsp;<span class="year"> - 2015년 </span></h3>
			</div>
			<div class="c-main">	
				<c:forEach items="${memeFourthTimeline }" var="tFourthList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tFourthList.memeName }';">${tFourthList.memeName }
						<span class="tooltiptext"> <span class="tooltiptext_text"> ${tFourthList.memeContents } </span> 
						<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>
			</div>

			<div class="c-header" align="center">
				<h3><span class="year">2016년</span><br> &emsp;&emsp;<span class="year"> - 2020년 </span></h3>
			</div>
			<div class="c-main">
				<c:forEach items="${memeFifthTimeline }" var="tFifthList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tFifthList.memeName }';">${tFifthList.memeName }
						<span class="tooltiptext"> <span class="tooltiptext_text"> ${tFifthList.memeContents } </span> 
						<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>	
			</div>

			<div class="c-header" align="center">
				<h3><span class="year">2021년</span></h3>
			</div>
			<div class="c-main">	
				<c:forEach items="${memeSixthTimeline }" var="tSixthList">
					<button class="btn_tooltip"
						onclick="location.href='/meme/detail?memeName=${tSixthList.memeName }';">${tSixthList.memeName }
						<span class="tooltiptext"> <span class="tooltiptext_text"> ${tSixthList.memeContents } </span> 
						<a class="more"> &nbsp;&nbsp; >>더알아보기 </a></span>
					</button>
					<br>
				</c:forEach>
			<br>	
			</div>
			
		</div>
	</div>
</body>
</html>
