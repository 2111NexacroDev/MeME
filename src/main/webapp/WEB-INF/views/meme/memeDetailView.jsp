<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 상세 페이지</title>
<style>
.c-right {
	width:10%;
	float: left;
}

.c-main {
	width: 80%;
	text-align: left;
	float: left;
}

.c-left {
	width:10%;

}

.main .dtail {
	text-align: left;
}

#memeDtatilName {
	color: black;
	font-size: 23px;
	font-weight: bold;
	font-style: italic;
	text-align: left;
	background: linear-gradient(to top, #ccc 50%, transparent 50%);
}

#memeDtailDate {
	padding-left: 20px;
}

#memeDetailContents {
	color: black;
	font-size:17px;
	padding-left: 10px;
	line-height: 200%;
}

#memeDetailmemberNickname{
	font-size: 14px;
}


#bottom{
	width:100%;
}

#opinion{
	font-size:13.5px;
	font-weight: bold;
	font-style: italic;
}
</style>
</head>
<body>
	<!--    <div>
      <br>
      <h1 id="title_name" align="center">유행어 사전</h1>
      <br>
      <hr>
   </div> -->
	<div class="c-right">
	<br>
	</div>
	<div class="c-main">
		<br>
		<div class="dtail" id="memeName">
			<span id="memeDtatilName">' &nbsp; ${meme.memeName} &nbsp; '</span>
		</div>
		<br>
		<div class="dtail">
			<span id="memeDtailDate">${meme.memeDate}</span>
		</div>
		<br>
		<div class="dtail">
			<span id="memeDetailContents">${meme.memeContents}</span> <br>
			<c:if test="${not empty memeFile.memeFileRename }">
				<br>
				<span> <img
					src="/resources/memeUploadFiles/${memeFile.memeFileRename }">
				</span>
			</c:if>
		</div>
		<br>
		<div class="dtail">
			<span id="memeDetailmemberNickname">등재요청자 &nbsp;&nbsp; : &nbsp;&nbsp; ${meme.memberNickname}</span>
		</div>
		<br> <br>
		<hr id="bottom">
		<!-- 로그인한 회원만 의견내기 a태그가 보여짐-->
		<div align="right">
			<br>
			<c:if test="${not empty sessionScope.loginMember }">
				<a id="opinion"
					href="/meme/requestView?memeName=${meme.memeName}&memeNo=${meme.memeNo}">
					>>의견내기 &nbsp;&nbsp;</a>
			</c:if>
		</div>
		<br> <br>
	</div>
	<div class="c-left">
		<br>
	</div>
</body>
</html>